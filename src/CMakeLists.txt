cmake_minimum_required(VERSION 3.5)
project(beetle)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(beetle)

include(CmakeSources.cmake)

message(STATUS "CMAKE_INSTALL_PREFIX: ${CMAKE_INSTALL_PREFIX}") # /usr/local
message(STATUS "CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")
message(STATUS "sources: ${_tmp_beetle_sources}")
message(STATUS "headers: ${_tmp_beetle_headers}")

include(GNUInstallDirs)
message(STATUS "CMAKE_INSTALL_INCLUDEDIR: ${CMAKE_INSTALL_INCLUDEDIR}")
message(STATUS "CMAKE_INSTALL_BINDIR: ${CMAKE_INSTALL_BINDIR}")
message(STATUS "CMAKE_INSTALL_LIBDIR: ${CMAKE_INSTALL_LIBDIR}")

set(INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR} CACHE PATH "Installation directory for libraries")
set(INSTALL_INCLUDEDIR ${CMAKE_INSTALL_INCLUDEDIR} CACHE PATH "Installation directory for header files")
if(WIN32 AND NOT CYGWIN)
    set(DEF_INSTALL_CMAKEDIR CMake)
else()
    set(DEF_INSTALL_CMAKEDIR share/cmake/${PROJECT_NAME})
endif()
SET(INSTALL_CMAKEDIR ${DEF_INSTALL_CMAKEDIR} CACHE PATH "Installation directory for CMake files")

# Reprot to user
foreach(p LIB INCLUDE CMAKE)
    file(TO_NATIVE_PATH ${CMAKE_INSTALL_PREFIX}/${INSTALL_${P}DIR} _path)
    message(STATUS "Installing ${p} components to ${_path}")
endforeach()


set(BEETLE_INCLUDE_DIR ${beetleIncludeDir})
list(APPEND beetleIncludeDir "/usr/local/include")

set(_tmp_beetle_libs)

# add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Vendored/glm/glm glm)
# list(APPEND _tmp_beetle_libs glm)

find_package(GLEW REQUIRED)
if(GLEW_FOUND)
    list(APPEND _tmp_beetle_libs GLEW)
    # message(STATUS "GLEW DIR: ${GLEW_INCLUDE_DIR}")
else()
    message(FATAL_ERROR "Could not find GLFEW blirary")
endif(GLEW_FOUND)


find_package(glfw3 3.3 REQUIRED)
if(glfw3_FOUND)
    message(STATUS "GLFW DIR: ${glfw_INCLUDE_DIRS}")
    list(APPEND _tmp_beetle_libs glfw.3.3)
else()
    message(FATAL_ERROR "Could not find glfw3 blirary")
endif()
    
if (APPLE)
    list(APPEND _tmp_beetle_libs "-framework OpenGL")
endif(APPLE)

# foreach(header ${beetleIncludeDir})
#     message(STATUS "public header: ${header}")
# endforeach()

target_include_directories(beetle 
    PUBLIC
    ${beetle_public_include_dirs}
    /usr/local/include
    PRIVATE
    ${beetle_private_include_dirs}
)
message(STATUS "LIBS: ${_tmp_beetle_libs}")

target_link_directories(beetle PUBLIC "/usr/local/lib")
# target_link_directories(beetle PRIVATE "/usr/local/lib")
target_link_libraries(beetle ${_tmp_beetle_libs})


# install
# set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/product)
install(TARGETS 
    beetle 
    ARCHIVE 
    DESTINATION ${INSTALL_LIBDIR}
    PUBLIC_HEADER 
    DESTINATION ${INSTALL_INCLUDEDIR}/${PROJECT_NAME}
    )

foreach(header ${_tmp_beetle_public_headers})
    message(STATUS "Header: ${CMAKE_SOURCE_DIR}/${header}")
    install(FILES 
        ${CMAKE_SOURCE_DIR}/${header} 
        DESTINATION ${INSTALL_INCLUDEDIR}/${PROJECT_NAME})
endforeach()


install(FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/FindBeetle.cmake" 
    DESTINATION ${INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
    )