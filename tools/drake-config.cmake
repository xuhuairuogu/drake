
# Generated by cps2cmake
# https://github.com/mwoehlke/pycps

if(CMAKE_MAJOR_VERSION LESS 3)
  message(FATAL_ERROR "CMake >= 3.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 3.0)
set(CMAKE_IMPORT_FILE_VERSION 1)

set(_expectedTargets drake::drake)

set(_targetsDefined)
set(_targetsNotDefined)

foreach(_expectedTarget ${_expectedTargets})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX)
endif()

add_library(drake::drake SHARED IMPORTED)
set_target_properties(drake::drake PROPERTIES
  IMPORTED_LOCATION "${_IMPORT_PREFIX}/lib/libdrake.so"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include;${_IMPORT_PREFIX}/include/external/bullet;${_IMPORT_PREFIX}/include/external/eigen;${_IMPORT_PREFIX}/include/external/fmt;${_IMPORT_PREFIX}/include/external/spdlog;${_IMPORT_PREFIX}/include/external/tinyobjloader"
  INTERFACE_COMPILE_FEATURES "cxx_decltype;cxx_decltype_auto"
)


unset(_IMPORT_PREFIX)
unset(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
