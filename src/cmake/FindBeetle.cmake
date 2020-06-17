
set(include_dir ${PROJECT_SOURCE_DIR}/src/Engine/product)

find_path(BEETLE_INCLUDE_DIR beetle.h ${include_dir}/include/beetle /usr/include/beetle /usr/local/include/beetle)
find_library(BEETLE_LIBRARY NAMES libbeetle.a PATHS ${include_dir}/lib /usr/lib /usr/local/lib)

message(STATUS "BEETLE_INCLUDE_DIR: ${BEETLE_INCLUDE_DIR}")
message(STATUS "BEETLE_LIBRARY:  ${BEETLE_LIBRARY}")


if(BEETLE_INCLUDE_DIR AND BEETLE_LIBRARY)
    set(BEETLE_FOUND TRUE)
endif()
