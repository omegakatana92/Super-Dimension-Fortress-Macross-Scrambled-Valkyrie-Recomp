cmake_minimum_required(VERSION 3.20)

project(MacrossScrambledValkyrieRecomp C CXX)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

set(SNESRECOMP_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/snesrecomp")
if(NOT EXISTS "${SNESRECOMP_ROOT}/runner/runner.cmake")
    message(FATAL_ERROR "Missing snesrecomp framework. Run scripts/setup-frameworks.ps1 (Windows) or scripts/setup-frameworks.sh.")
endif()
if(NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/recomp-ui/recomp_ui.cmake")
    message(FATAL_ERROR "Missing recomp-ui framework. Run the framework setup script.")
endif()
if(NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/generated")
    message(FATAL_ERROR "Missing generated/. Generate it locally from your own compatible ROM using snesrecomp; ROM-derived generated code is not distributed.")
endif()
include("${SNESRECOMP_ROOT}/runner/runner.cmake")

add_executable(Macross
    main.c
    ${SNESRECOMP_RUNNER_SOURCES}
)

target_include_directories(Macross PRIVATE
    ${SNESRECOMP_RUNNER_INCLUDE_DIRS}
    "${CMAKE_CURRENT_SOURCE_DIR}/config"
)

snesrecomp_target_generated_code(
    Macross
    "${CMAKE_CURRENT_SOURCE_DIR}/generated"
)

snesrecomp_target_sdl(Macross)
snesrecomp_target_desktop_host(Macross)

# Remove Unix math library dependencies on Windows/MSVC.
if(WIN32 AND MSVC)
    get_target_property(_macross_libs Macross LINK_LIBRARIES)
    if(_macross_libs)
        list(REMOVE_ITEM _macross_libs m m.lib)
        set_property(TARGET Macross PROPERTY LINK_LIBRARIES "${_macross_libs}")
    endif()
endif()

# Production build: disable reverse-debug instrumentation.
target_compile_definitions(Macross PRIVATE
    SNESRECOMP_TRACE=0
    SNESRECOMP_REVERSE_DEBUG=0
)

# Macross graphical launcher
include("${CMAKE_CURRENT_SOURCE_DIR}/recomp-ui/recomp_ui.cmake")
recomp_target_launcher_ui(Macross CONSOLE snes)
