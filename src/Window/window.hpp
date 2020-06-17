#ifndef WINDOW_H
#define WINDOW_H

#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include "event.hpp"
#include "scene.hpp"
namespace bet {

class Window {
 public:
  // return the window.
  static Window *Get();
  static void Destory();
  ~Window();

  void RunScene(Scene &scene);

  int GetWidth() const { return width_; }
  int GetHeight() const { return height_; }

  void SetTitle(const char *title) { title_ = title; }
  void SetWidth(int width) { width_ = width; }
  void SetHeight(int height) { height_ = height; }

  void AddEventHandler(Key key, EventState state, EventHandlerFun handler);

 private:
  Window(int width, int height, const char *title);

  int width_;
  int height_;
  const char *title_;
  Scene scene_;

  void Init();
  void Render();
  void ProcessInput(GLFWwindow *window);
  void static FramebufferSizeChanged(GLFWwindow *window, int width, int height);
  void Update();

  std::vector<EventHandler> eventHandlers_;
};

}  // namespace bet
#endif
