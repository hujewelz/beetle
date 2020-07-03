#include "scene.hpp"

#include <iostream>

#include "texture.hpp"

// #include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "resource_manager.hpp"
#include "sprite_renderer.hpp"

using namespace bet;

static SpriteRenderer *renderer = nullptr;

Scene::Scene() {}

Scene::~Scene() {
  delete renderer;
  for (auto child : children_) {
    delete child;
  }
}

void Scene::AddChild(Sprite *sprite) { children_.push_back(sprite); }

void Scene::Init() {
  Shader shader = ResourceManager::CreateShader(
      "./Resources/core.vs", "./Resources/core.fs", "Breakout");
  shader.Use();
  // set projection
  glm::mat4 projection =
      glm::ortho(0.0f, static_cast<GLfloat>(600), static_cast<GLfloat>(800),
                 0.0f, -1.0f, 1.0f);
  shader.SetInt("image", 0);
  shader.SetMatrix4("projection", projection);
  renderer = new SpriteRenderer(shader);

  for (Sprite *sprite : children_) {
    ResourceManager::CreateTexture2D(sprite->GetFileName());
  }
}

void Scene::Render() {
  for (Sprite *sprite : children_) {
    renderer->Render(*sprite);
  }
}