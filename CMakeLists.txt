cmake_minimum_required(VERSION 3.0)

project(yarp-matlab-bindings)

# for FindMatlab.cmake
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

#############################################################################
## Options for compiling supported languages.  There's nothing magical
## about this list, any SWIG-supported language should work - take a
## look at e.g. ruby code below for how to do it.

option(YARP_USES_MATLAB "Do you want to create the MATLAB bindings" FALSE)
option(YARP_USES_OCTAVE "Do you want to create the OCTAVE bindings" FALSE)
option(YARP_GENERATE_MATLAB "Enable if you have the experimental version of SWIG necessary for generating the Matlab wrapper" FALSE)

find_package(YARP 2.3.71 REQUIRED)

# Check if YARP_WRAP_STL_STRING is defined in YARP
get_target_property(YARP_SYSTEM_H_LOCATION YARP::YARP_conf INTERFACE_INCLUDE_DIRECTORIES)
set(YARP_SYSTEM_H_LOCATION ${YARP_SYSTEM_H_LOCATION}/yarp/conf/system.h)
file(READ ${YARP_SYSTEM_H_LOCATION} YARP_SYSTEM_H)
if(YARP_SYSTEM_H MATCHES "#define YARP_WRAP_STL_STRING" AND NOT YARP_GENERATE_MATLAB)
    message(FATAL_ERROR "The YARP installation found in ${YARP_DIR} has the YARP_WRAP_STL_STRING option set to ON, \
                         while yarp-matlab-bindings since YARP 2.3.72 requires this option to be set to OFF.\
                         Please recompile YARP with YARP_WRAP_STL_STRING set to OFF, or check \
                         https://github.com/robotology-playground/yarp-matlab-bindings/issues/17 for more info.")
endif()

include(UseSWIG)
find_package(YCM)
if(YCM_FOUND)
  include(AddInstallRPATHSupport)
  add_install_rpath_support(BIN_DIRS "${CMAKE_INSTALL_PREFIX}/bin"
                            LIB_DIRS "${CMAKE_INSTALL_PREFIX}/lib"
                            USE_LINK_PATH)
endif()

include_directories(${YARP_INCLUDE_DIRS})

if(YARP_USES_MATLAB OR YARP_GENERATE_MATLAB OR YARP_USES_OCTAVE)
    add_subdirectory(matlab)
endif()

