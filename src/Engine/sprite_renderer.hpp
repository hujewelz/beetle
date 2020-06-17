#ifndef SPRITERENDER_H
#define SPRITERENDER_H

#include <GL/glew.h>

#include "shader.hpp"
#include "sprite.hpp"
#include "vec.hpp"

class SpriteRenderer {
 public:
  SpriteRenderer(Shader &shader);
  ~SpriteRenderer();
  void Render(bet::Sprite &sprite);

 private:
  Shader shader_;
  GLuint VAO_;
  GLuint VBO_;
  void Init();
};

#endif