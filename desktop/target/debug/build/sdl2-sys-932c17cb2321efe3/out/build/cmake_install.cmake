# Install script for directory: /Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/libSDL2-2.0.0.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.0.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.0.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.0.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/libSDL2-2.0.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/libSDL2main.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/libSDL2_test.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2_test.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake"
         "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/SDL2Config.cmake"
    "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/SDL2ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_assert.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_atomic.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_audio.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_bits.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_blendmode.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_clipboard.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_copying.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_cpuinfo.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_egl.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_endian.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_error.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_events.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_filesystem.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_gamecontroller.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_gesture.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_guid.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_haptic.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_hidapi.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_hints.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_joystick.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_keyboard.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_keycode.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_loadso.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_locale.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_log.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_main.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_messagebox.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_metal.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_misc.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_mouse.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_mutex.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_name.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengl.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengl_glext.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_gl2.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_gl2ext.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_gl2platform.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_opengles2_khrplatform.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_pixels.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_platform.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_power.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_quit.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_rect.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_render.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_rwops.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_scancode.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_sensor.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_shape.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_stdinc.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_surface.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_system.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_syswm.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_assert.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_common.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_compare.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_crc32.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_font.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_fuzzer.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_harness.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_images.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_log.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_md5.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_memory.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_test_random.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_thread.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_timer.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_touch.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_types.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_version.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_video.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/SDL_vulkan.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/begin_code.h"
    "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/include/close_code.h"
    "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/include/SDL_revision.h"
    "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/include-config-release/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
            execute_process(COMMAND /opt/homebrew/Cellar/cmake/3.30.2/bin/cmake -E create_symlink
              "libSDL2-2.0.dylib" "libSDL2.dylib"
              WORKING_DIRECTORY "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/libSDL2.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/Users/krinjmaster/.cargo/registry/src/index.crates.io-6f17d22bba15001f/sdl2-sys-0.37.0/SDL/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "/Users/krinjmaster/Desktop/chip8/desktop/target/debug/build/sdl2-sys-932c17cb2321efe3/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
