find_path(BEETLE_INCLUDE_DIR beetle.h 
    ${CMAKE_INSTALL_PREFIX}/include/beetle 
    /usr/include/beetle 
    /usr/local/include/beetle)

find_library(BEETLE_LIBRARY NAMES beetle PATHS ${CMAKE_INSTALL_PREFIX}/lib /usr/lib /usr/local/lib)

message(STATUS "BEETLE_INCLUDE_DIR: ${BEETLE_INCLUDE_DIR}")
message(STATUS "BEETLE_LIBRARY:  ${BEETLE_LIBRARY}")


if(BEETLE_INCLUDE_DIR AND BEETLE_LIBRARY)
    set(BEETLE_FOUND TRUE)
endif()
