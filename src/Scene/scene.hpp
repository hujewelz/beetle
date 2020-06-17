#ifndef SCENE_H
#define SCENE_H

#include <vector>

#include "sprite.hpp"

namespace bet {

class Scene {
 public:
  Scene();
  ~Scene();

  // load shader and textures
  void Init();

  // render all sprites
  void Render();

  void AddChild(Sprite *sprite);

 private:
  std::vector<Sprite *> children_;
};

}  // namespace bet

#endif