use rand::{random, Rng};

const RAM_SIZE: usize = 4096;
const REGS_NUMBER: usize = 16;
const STACK_SIZE: usize = 16;
const KEYS_NUMBER: usize = 16;
const START_ADDRESS: u16 = 0x200;
const FONTSET_SIZE: usize = 80;

pub const SCREEN_WIDTH: usize = 64;
pub const SCREEN_HEIGHT: usize = 32;

const FONTSET: [u8; FONTSET_SIZE] = [
    0xF0, 0x90, 0x90, 0x90, 0xF0, // 0
    0x20, 0x60, 0x20, 0x20, 0x70, // 1
    0xF0, 0x10, 0xF0, 0x80, 0xF0, // 2
    0xF0, 0x10, 0xF0, 0x10, 0xF0, // 3
    0x90, 0x90, 0xF0, 0x10, 0x10, // 4
    0xF0, 0x80, 0xF0, 0x10, 0xF0, // 5
    0xF0, 0x80, 0xF0, 0x90, 0xF0, // 6
    0xF0, 0x10, 0x20, 0x40, 0x40, // 7
    0xF0, 0x90, 0xF0, 0x90, 0xF0, // 8
    0xF0, 0x90, 0xF0, 0x10, 0xF0, // 9
    0xF0, 0x90, 0xF0, 0x90, 0x90, // A
    0xE0, 0x90, 0xE0, 0x90, 0xE0, // B
    0xF0, 0x80, 0x80, 0x80, 0xF0, // C
    0xE0, 0x90, 0x90, 0x90, 0xE0, // D
    0xF0, 0x80, 0xF0, 0x80, 0xF0, // E
    0xF0, 0x80, 0xF0, 0x80, 0x80, // F
];

pub struct Emulator {
    // program counter
    pc: u16,
    // ram definition
    ram: [u8; RAM_SIZE],
    // screen (1bit for pixel)
    screen: [bool; SCREEN_WIDTH * SCREEN_HEIGHT],
    // v-registers
    v_regs: [u8; REGS_NUMBER],
    // i-register
    i_reg: u16,
    // stack pointer
    sp: u16,
    // stack
    stack: [u16; STACK_SIZE],
    // keys ( keyboard input i believe )
    keys: [bool; KEYS_NUMBER],
    // delay timer
    dt: u8,
    // sound timer
    st: u8,
}

impl Emulator {
    pub fn get_display(&self) -> &[bool; SCREEN_WIDTH * SCREEN_HEIGHT] {
        &self.screen
    }

    pub fn key_press(&mut self, idx: usize, pressed: bool) {
        self.keys[idx] = pressed;
    }

    pub fn load(&mut self, data: &[u8]) {
        let start = START_ADDRESS as usize;
        let end = START_ADDRESS as usize + data.len();

        self.ram[start..end].copy_from_slice(data);
    }

    pub fn init() -> Self {
        let mut emulator = Emulator {
            pc: START_ADDRESS,
            ram: [0; RAM_SIZE],
            screen: [false; SCREEN_WIDTH * SCREEN_HEIGHT],
            v_regs: [0; REGS_NUMBER],
            i_reg: 0,
            sp: 0,
            stack: [0; STACK_SIZE],
            keys: [false; KEYS_NUMBER],
            dt: 0,
            st: 0,
        };

        // copy fontset to ram when initialized
        emulator.ram[..FONTSET_SIZE].copy_from_slice(&FONTSET);

        emulator
    }

    pub fn reset(&mut self) {
        self.pc = START_ADDRESS;
        self.ram = [0; RAM_SIZE];
        self.screen = [false; SCREEN_WIDTH * SCREEN_HEIGHT];
        self.v_regs = [0; REGS_NUMBER];
        self.i_reg = 0;
        self.sp = 0;
        self.stack = [0; STACK_SIZE];
        self.keys = [false; KEYS_NUMBER];
        self.dt = 0;
        self.st = 0;
        self.ram[..FONTSET_SIZE].copy_from_slice(&FONTSET);
    }

    fn push(&mut self, value: u16) {
        self.stack[self.sp as usize] = value;
        self.sp += 1;
    }

    fn pop(&mut self) -> u16 {
        self.sp -= 1;
        self.stack[self.sp as usize]
    }

    pub fn tick_timers(&mut self) {
        // timers DO NOT RESET, game will reset them when it needs to
        if self.dt > 0 {
            self.dt -= 1;
        }

        if self.st > 0 {
            if self.st == 1 {
                // BEEP
            }
            self.st -= 1;
        }
    }

    pub fn tick(&mut self) {
        // fetch
        let opcode = self.fetch();
        // decode & execure
        self.execute(opcode);
    }

    fn fetch(&mut self) -> u16 {
        // because all instructions consist of 2 bytes
        let first_byte = self.ram[self.pc as usize] as u16;
        let second_byte = self.ram[(self.pc + 1) as usize] as u16;

        let opcode = first_byte << 8 | second_byte;

        self.pc += 2;

        opcode
    }

    fn execute(&mut self, opcode: u16) {
        let first_digit = (opcode & 0xF000) >> 12;
        let second_digit = (opcode & 0x0F00) >> 8;
        let third_digit = (opcode & 0x00F0) >> 4;
        let fourth_digit = opcode & 0x000F;

        match (first_digit, second_digit, third_digit, fourth_digit) {
            // do nothing
            (0, 0, 0, 0) => return,
            // Clear screen
            (0, 0, 0xE, 0) => {
                self.screen = [false; SCREEN_WIDTH * SCREEN_HEIGHT];
            }
            // Return from subroutine (aka function)
            (0, 0, 0xE, 0xE) => {
                let return_address = self.pop();
                self.pc = return_address;
            }
            // jump to adress NNN
            (1, _, _, _) => {
                self.pc = opcode & 0xFFF;
            }
            // call 0xNNN (enter subroutine)
            (2, _, _, _) => {
                self.push(self.pc);
                self.pc = opcode & 0xFFF;
            }
            // // skip if vN == 0xNN
            (3, _, _, _) => {
                if self.v_regs[second_digit as usize] == (opcode & 0xFF) as u8 {
                    self.pc += 2;
                }
            }
            // skip if vN != 0xNN
            (4, _, _, _) => {
                if self.v_regs[second_digit as usize] != (opcode & 0xFF) as u8 {
                    self.pc += 2;
                }
            }
            // skip if VX == VY
            (5, _, _, 0) => {
                if self.v_regs[second_digit as usize] == self.v_regs[third_digit as usize] {
                    self.pc += 2;
                }
            }
            // VX = 0xNN
            (6, _, _, _) => {
                self.v_regs[second_digit as usize] = (opcode & 0xFF) as u8;
            }
            // VX += 0xNN
            (7, _, _, _) => {
                let number = self.v_regs[second_digit as usize];

                self.v_regs[second_digit as usize] = number.wrapping_add((opcode & 0xFF) as u8);
            }
            // VX = VY
            (8, _, _, 0) => {
                self.v_regs[second_digit as usize] = self.v_regs[third_digit as usize];
            }
            // VX |= VY
            (8, _, _, 1) => {
                self.v_regs[second_digit as usize] |= self.v_regs[third_digit as usize];
            }
            // VX &= VY
            (8, _, _, 2) => {
                self.v_regs[second_digit as usize] &= self.v_regs[third_digit as usize];
            }
            // VX ^= VY
            (8, _, _, 3) => {
                self.v_regs[second_digit as usize] &= self.v_regs[third_digit as usize];
            }
            // VX += VY
            (8, _, _, 4) => {
                let first_number = self.v_regs[second_digit as usize];
                let second_number = self.v_regs[third_digit as usize];

                let (new_vx, carry) = first_number.overflowing_add(second_number);
                let new_vf = if carry { 1 } else { 0 };

                self.v_regs[second_digit as usize] = new_vx;
                self.v_regs[0xF] = new_vf;
            }
            // VX -= VY
            (8, _, _, 5) => {
                let first_number = self.v_regs[second_digit as usize];
                let second_number = self.v_regs[third_digit as usize];

                let (new_vx, borrow) = first_number.overflowing_sub(second_number);
                let new_vf = if borrow { 0 } else { 1 };

                self.v_regs[second_digit as usize] = new_vx;
                self.v_regs[0xF] = new_vf;
            }
            // VX >>= 1
            (8, _, _, 6) => {
                let number = self.v_regs[second_digit as usize];

                let new_vf = number & 0x1;

                self.v_regs[second_digit as usize] >>= 1;
                self.v_regs[0xF] = new_vf;
            }
            // VX = VY - VX
            (8, _, _, 7) => {
                let first_number = self.v_regs[second_digit as usize];
                let second_number = self.v_regs[third_digit as usize];

                let (new_vx, borrow) = second_number.overflowing_sub(first_number);
                let new_vf = if borrow { 0 } else { 1 };

                self.v_regs[second_digit as usize] = new_vx;
                self.v_regs[0xF] = new_vf;
            }
            // VX <<= 1
            (8, _, _, 8) => {
                let number = self.v_regs[second_digit as usize];

                let new_vf = number & 0x80; // leave only first digit

                self.v_regs[second_digit as usize] >>= 1;
                self.v_regs[0xF] = new_vf;
            }
            // skip if VX != VY
            (9, _, _, 0) => {
                if self.v_regs[second_digit as usize] != self.v_regs[third_digit as usize] {
                    self.pc += 2;
                }
            }
            // VI = 0xNNN
            (0xA, _, _, _) => self.i_reg = opcode & 0xFFF,
            // jump to V0 + 0xNNN
            (0xB, _, _, _) => {
                self.pc = (self.v_regs[0] as u16) + (opcode & 0xFFF);
            }
            // VX = rand() & 0xNN
            (0xC, _, _, _) => {
                let nn = (opcode & 0xFF) as u8;
                let rng: u8 = rand::thread_rng().gen();
                self.v_regs[second_digit as usize] = rng & nn;
            }
            // Draw sprites from VX to VY N pixels tall
            (0xD, _, _, _) => {
                // Get the (x, y) coords for our sprite
                let x_coord = self.v_regs[second_digit as usize] as u16;
                let y_coord = self.v_regs[third_digit as usize] as u16;
                // The last digit determines how many rows high our sprite is
                let num_rows = fourth_digit;

                // Keep track if any pixels were flipped
                let mut flipped = false;
                // Iterate over each row of our sprite
                for y_line in 0..num_rows {
                    // Determine which memory address our row's data is stored
                    let addr = self.i_reg + y_line as u16;
                    let pixels = self.ram[addr as usize];
                    // Iterate over each column in our row
                    for x_line in 0..8 {
                        // Use a mask to fetch current pixel's bit. Only flip if a 1
                        if (pixels & (0b1000_0000 >> x_line)) != 0 {
                            // Sprites should wrap around screen, so apply modulo
                            let x = (x_coord + x_line) as usize % SCREEN_WIDTH;
                            let y = (y_coord + y_line) as usize % SCREEN_HEIGHT;

                            // Get our pixel's index in the 1D screen array
                            let idx = x + SCREEN_WIDTH * y;
                            // Check if we're about to flip the pixel and set
                            flipped |= self.screen[idx];
                            self.screen[idx] ^= true;
                        }
                    }
                }
                // Populate VF register
                if flipped {
                    self.v_regs[0xF] = 1;
                } else {
                    self.v_regs[0xF] = 0;
                }
            }
            // skip if key stored in VX is pressed (user key input)
            (0xE, _, 9, 0xE) => {
                if self.keys[self.v_regs[second_digit as usize] as usize] {
                    self.pc += 2;
                }
            }
            // skip if key stored in VX is not pressed
            (0xE, _, 0xA, 1) => {
                if !self.keys[self.v_regs[second_digit as usize] as usize] {
                    self.pc += 2;
                }
            }
            // VX = Delay timer
            (0xF, _, 0, 7) => {
                self.v_regs[second_digit as usize] = self.dt;
            }
            // Waits for key press, stored in VX
            (0xF, _, 0, 0xA) => {
                let mut pressed = false;

                for index in 0..self.keys.len() {
                    if self.keys[index as usize] {
                        self.v_regs[second_digit as usize] = index as u8;
                        pressed = true;
                        break;
                    }
                }

                if !pressed {
                    self.pc -= 2;
                }
            }
            // Delay timer = VX
            (0xF, _, 1, 5) => {
                self.dt = self.v_regs[second_digit as usize];
            }
            // Delay timer = VX
            (0xF, _, 1, 8) => {
                self.st = self.v_regs[second_digit as usize];
            }
            // I += VX
            (0xF, _, 1, 0xE) => {
                self.i_reg = self
                    .i_reg
                    .wrapping_add(self.v_regs[second_digit as usize] as u16);
            }
            // Set I to font character in VX
            (0xF, _, 2, 9) => {
                self.i_reg = self.v_regs[second_digit as usize] as u16 * 5;
            }
            // Store BCD encoding of VX into I
            (0xF, _, 3, 3) => {
                let vx = self.v_regs[second_digit as usize] as f32;

                let hundreds = (vx / 100.0).floor() as u8;
                let tens = ((vx / 10.0) % 10.0).floor() as u8;
                let ones = (vx % 10.0) as u8;

                self.ram[self.i_reg as usize] = hundreds;
                self.ram[(self.i_reg + 1) as usize] = tens;
                self.ram[(self.i_reg + 2) as usize] = ones;
            }
            // store V0 thru VX in ram starting at I
            (0xF, _, 5, 5) => {
                for index in 0..second_digit {
                    self.ram[self.i_reg as usize + index as usize] = self.v_regs[index as usize];
                }
            }
            // Fills V0 thru VX with ram values starting at adress in I
            (0xF, _, 6, 5) => {
                for index in 0..second_digit {
                    self.v_regs[index as usize] = self.ram[self.i_reg as usize + index as usize];
                }
            }
            (_, _, _, _) => unimplemented!("Unimplemented opcode: {}", opcode),
        }
    }
}
