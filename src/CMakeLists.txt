cmake_minimum_required(VERSION 3.5)
project(beetle)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(beetle "")

include(CmakeSources.cmake)

message(STATUS "CMAKE_INSTALL_PREFIX: ${CMAKE_INSTALL_PREFIX}") # /usr/local
message(STATUS "CMAKE_MODULE_PATH: ${CMAKE_MODULE_PATH}")

include(GNUInstallDirs)

set(INSTALL_LIBDIR ${CMAKE_INSTALL_LIBDIR} CACHE PATH "Installation directory for libraries")
set(INSTALL_INCLUDEDIR ${CMAKE_INSTALL_INCLUDEDIR} CACHE PATH "Installation directory for header files")
if(WIN32 AND NOT CYGWIN)
    set(DEF_INSTALL_CMAKEDIR CMake)
else()
    set(DEF_INSTALL_CMAKEDIR share/cmake/${PROJECT_NAME})
endif()
SET(INSTALL_CMAKEDIR ${DEF_INSTALL_CMAKEDIR} CACHE PATH "Installation directory for CMake files")

set(_tmp_beetle_libs)

# add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/Vendored/glm/glm glm)
# list(APPEND _tmp_beetle_libs glm)

find_package(GLEW REQUIRED)
if(GLEW_FOUND)
    list(APPEND _tmp_beetle_libs GLEW)
    message(STATUS "GLEW LIBS: ${GLEW_LIBRARIES}")
    message(STATUS "GLEW INCLUDES: ${GLEW_INCLUDE_DIRS}")
else()
    message(FATAL_ERROR "Could not find GLFEW library")
endif(GLEW_FOUND)


find_package(glfw3 3.3 REQUIRED)
if(glfw3_FOUND)
    list(APPEND _tmp_beetle_libs glfw)
else()
    message(FATAL_ERROR "Could not find glfw3 library")
endif()

if (APPLE)
    find_package(OpenGL REQUIRED QUIET)
    if(OpenGL_FOUND)
        # message(STATUS "FindGLEW: Found OpenGL Framework.")
        # message(STATUS "FindGLEW: OPENGL_LIBRARIES: ${OPENGL_LIBRARIES}")
        list(APPEND _tmp_beetle_libs OpenGL::GL)
    endif()
endif()

target_include_directories(beetle 
    PUBLIC
    ${beetle_public_include_dirs}
    # /usr/local/include
    PRIVATE
    ${beetle_private_include_dirs}
)

target_link_directories(beetle PUBLIC /usr/local/lib)
# target_link_directories(beetle PRIVATE "/usr/local/lib")
target_link_libraries(beetle ${_tmp_beetle_libs})


# install
install(TARGETS 
    beetle 
    ARCHIVE 
    DESTINATION ${INSTALL_LIBDIR}
    PUBLIC_HEADER 
    DESTINATION ${INSTALL_INCLUDEDIR}/${PROJECT_NAME}
    )

foreach(header ${_tmp_beetle_public_headers})
    install(FILES 
        ${CMAKE_SOURCE_DIR}/${header} 
        DESTINATION ${INSTALL_INCLUDEDIR}/${PROJECT_NAME})
endforeach()


install(FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/FindBeetle.cmake" 
    DESTINATION ${INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
    )