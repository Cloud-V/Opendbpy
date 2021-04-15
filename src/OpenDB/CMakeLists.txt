############################################################################
########################### Project Setup ##################################
############################################################################

# Setting CMake version properly to ensure correct policies behavior
cmake_minimum_required(VERSION 3.14...3.16)
# Setting up OpenDB project
project(OpenDB VERSION 0.0.1
  LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

# Configure build version
configure_file (
    "${PROJECT_SOURCE_DIR}/include/opendb/version.hh.in"
    "${PROJECT_BINARY_DIR}/include/opendb/version.hh"
)

find_package(Boost)
include_directories(include /usr/local/include/)

############################################################################
################################# Targets ##################################
############################################################################

add_subdirectory(src/utl)
add_subdirectory(src/db)
add_subdirectory(src/defin)
add_subdirectory(src/defout)
add_subdirectory(src/lef)
add_subdirectory(src/lefin)
add_subdirectory(src/lefout)
add_subdirectory(src/def)
add_subdirectory(src/zutil)
add_subdirectory(src/zlib)
add_subdirectory(src/tm)
add_subdirectory(src/cdl)

############################################################################
################################# SWIG #####################################
############################################################################

find_package(SWIG 3.0 REQUIRED)

include(${SWIG_USE_FILE})

include_directories(include ./src/swig/common)
add_subdirectory(src/swig/common)
add_subdirectory(src/swig/python)

############################################################################
############################### DOXYGEN ####################################
############################################################################
find_package(Doxygen)

if (DOXYGEN_FOUND)
  set(DOXYGEN_EXTRACT_STATIC YES)
  set(DOXYGEN_REFERENCED_BY_RELATION YES)
  set(DOXYGEN_REFERENCES_RELATION YES)

  doxygen_add_docs(docs include)
endif()
