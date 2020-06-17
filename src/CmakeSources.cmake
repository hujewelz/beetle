set(_tmp_beetle_headers
    Scene/scene.hpp
    Sprite/Sprite.hpp
    Window/window.hpp
    beetle.h
)

set(_tmp_beetle_sources 
    Scene/scene.cpp
    Shader/shader.cpp
    Sprite/sprite.cpp
    Sprite/sprite_renderer.cpp
    Texture/texture.cpp
    Window/window.cpp
    Window/resource_manager.cpp
    Vendored/stb_image/stb_image.cpp
    Utility/vec.cpp
    )
    
# aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/.. Beetle_source_list)

set(beetleIncludeDir
    ${CMAKE_CURRENT_SOURCE_DIR}/Sprite
    ${CMAKE_CURRENT_SOURCE_DIR}/Texture
    ${CMAKE_CURRENT_SOURCE_DIR}/Scene
    ${CMAKE_CURRENT_SOURCE_DIR}/Window
    ${CMAKE_CURRENT_SOURCE_DIR}/Utility
    ${CMAKE_CURRENT_SOURCE_DIR}/Shader
    ${CMAKE_CURRENT_SOURCE_DIR}/Vendored/glm
    ${CMAKE_CURRENT_SOURCE_DIR}/Vendored/stb_image
    )


target_sources(beetle PRIVATE ${_tmp_beetle_sources})

# Generates a header containing export macros
# include(GenerateExportHeader)
# generate
