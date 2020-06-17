set(_tmp_beetle_public_headers
    Scene/scene.hpp
    Sprite/Sprite.hpp
    Window/window.hpp
    Window/event.hpp
    Utility/vec2.hpp
    Utility/vec3.hpp
    Utility/vec.hpp
    Utility/rect.hpp
    beetle.h
)

set(_tmp_beetle_sources 
    Window/window.cpp
    Scene/scene.cpp
    Sprite/sprite.cpp
    Engine/shader.cpp
    Engine/sprite_renderer.cpp
    Engine/texture.cpp
    Engine/resource_manager.cpp
    Vendored/stb_image/stb_image.cpp
    Utility/vec.cpp
    )
    
# aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/.. Beetle_source_list)

set(beetle_public_include_dirs
    ${CMAKE_CURRENT_SOURCE_DIR}/Sprite
    ${CMAKE_CURRENT_SOURCE_DIR}/Scene
    ${CMAKE_CURRENT_SOURCE_DIR}/Window
    ${CMAKE_CURRENT_SOURCE_DIR}/Utility
    )

set(beetle_private_include_dirs
    ${CMAKE_CURRENT_SOURCE_DIR}/Engine
    ${CMAKE_CURRENT_SOURCE_DIR}/Vendored/glm
    ${CMAKE_CURRENT_SOURCE_DIR}/Vendored/stb_image
    )

target_sources(beetle PRIVATE ${_tmp_beetle_sources})

# Generates a header containing export macros
# include(GenerateExportHeader)
# generate
