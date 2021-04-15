add_library(opendb_swig_common
    swig_common.cpp
)

target_include_directories(opendb_swig_common
  PUBLIC
    ${PROJECT_SOURCE_DIR}/include
    .
)

set_property(TARGET opendb_swig_common PROPERTY POSITION_INDEPENDENT_CODE ON)

target_link_libraries(opendb_swig_common
  PUBLIC
    defin
    lefin
    utl
)