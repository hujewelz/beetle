#include "sprite_renderer.hpp"

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <iostream>

#include "resource_manager.hpp"
#include "window.hpp"

using namespace bet;

SpriteRenderer::SpriteRenderer(Shader &shader) {
  shader_ = shader;
  Init();
}

SpriteRenderer::~SpriteRenderer() {
  glDeleteVertexArrays(1, &VAO_);
  glDeleteBuffers(1, &VBO_);
}

void SpriteRenderer::Render(Sprite &sprite) {
  shader_.Use();
  glm::mat4 model = glm::mat4(1.0f);
  model = glm::translate(
      model, glm::vec3(sprite.GetPosition().x, sprite.GetPosition().y, 0.0f));

  GLint viewport[4];
  glGetIntegerv(GL_VIEWPORT, viewport);

  auto w = bet::Window::Get();
  Texture2D texture = ResourceManager::GetTexture2D(sprite.GetFileName());
  if (sprite.GetSize().x == 0 && sprite.GetSize().y == 0) {
    sprite.SetSize(vec2(static_cast<float>(texture.GetWidth()),
                        static_cast<float>(texture.GetHeight())));
  }

  int sprite_width = sprite.GetSize().x * w->GetWidth() / viewport[2];
  int sprite_height = sprite.GetSize().y * w->GetHeight() / viewport[3];

  model = glm::translate(
      model, glm::vec3(0.5f * sprite_width, 0.5f * sprite_height, 0.0f));
  model = glm::rotate(model, sprite.GetRotate(), glm::vec3(0.0f, 0.0f, -1.0f));
  model = glm::translate(
      model, glm::vec3(-0.5f * sprite_width, -0.5f * sprite_height, 0.0f));
  model = glm::scale(model, glm::vec3(sprite_width, sprite_height, 1.0f));
  shader_.SetVector3f("spriteColor", sprite.GetColor().x, sprite.GetColor().y,
                      sprite.GetColor().z);
  shader_.SetMatrix4("model", model);

  glActiveTexture(GL_TEXTURE0);
  texture.Bind();
  if (texture.HasAlpha()) {
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
  }

  glBindVertexArray(VAO_);
  glDrawArrays(GL_TRIANGLES, 0, 6);
  glBindVertexArray(0);
}

void SpriteRenderer::Init() {
  float vertices[] = {
      // pos      // tex
      0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,

      0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f};

  glGenVertexArrays(1, &VAO_);
  glGenBuffers(1, &VBO_);

  glBindBuffer(GL_ARRAY_BUFFER, VBO_);
  glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

  glBindVertexArray(VAO_);
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(0, 4, GL_FLOAT, false, 4 * sizeof(float), (void *)0);
  glBindBuffer(GL_ARRAY_BUFFER, 0);
  glBindVertexArray(0);
}