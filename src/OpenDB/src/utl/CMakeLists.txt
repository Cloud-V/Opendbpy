# Copyright (c) 2021, OpenRoad Project
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

find_package(spdlog REQUIRED)
message(STATUS "spdlog: ${spdlog_VERSION}")

############################################################
# Create a library 
############################################################
add_library( utl
  STATIC
  src/Logger.cpp
  src/MakeLogger.cpp
)
  
target_include_directories( utl
  PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}/include
  ${TCL_INCLUDE_PATH}
)

target_link_libraries( utl
  PUBLIC
  spdlog::spdlog
)

install (
  TARGETS utl
  LIBRARY DESTINATION lib
)

set_property(TARGET utl PROPERTY POSITION_INDEPENDENT_CODE ON)
