
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(example main.cpp)
set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/beetle)

add_subdirectory(../src beetle)

# target_link_directories(Breakout PUBLIC ${CMAKE_CURRENT_DIR}/src/Engine/)
target_link_libraries(example beetle)

# set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/src/cmake)
# find_package(beetle)
# if(BEETLE_FOUND)
    # message(STATUS "BEETLE_FOUNDED")
#     add_executable(Breakout main.cpp)
#     target_include_directories(Breakout PUBLIC ${BEETLE_INCLUDE_DIR} /usr/local/include)
#     target_link_libraries(Breakout ${BEETLE_LIBRARY}) 
# endif()