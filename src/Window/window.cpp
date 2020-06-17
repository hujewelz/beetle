#include "window.hpp"

#include <iostream>

#include "resource_manager.hpp"
#include "texture.hpp"

using namespace bet;

static Window *window = nullptr;

Window *Window::Get() {
  if (!window) {
    window = new Window(800, 600, "New Game");
  }
  return window;
}

void Window::Destory() { delete window; }

Window::Window(int width, int height, const char *title)
    : width_(width), height_(height), title_(title) {}

Window::~Window() { std::cout << "Window deallocated." << std::endl; }

void Window::RunScene(Scene &scene) {
  scene_ = scene;
  Init();
}

void Window::Init() {
  // glfw: initialize and configure
  // ------------------------------
  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

  // glfw window creation
  // --------------------
  GLFWwindow *window = glfwCreateWindow(width_, height_, title_, NULL, NULL);
  if (window == NULL) {
    std::cout << "Failed to create GLFW window" << std::endl;
    glfwTerminate();
    return;
  }
  glfwMakeContextCurrent(window);

  glfwSetFramebufferSizeCallback(window, Window::FramebufferSizeChanged);
  // glfwSetKeyCallback
  glewExperimental = GL_TRUE;
  if (glewInit() != GLEW_OK) {
    std::cout << "Init glew failed";
    return;
  }

  scene_.Init();

  // render loop
  while (!glfwWindowShouldClose(window)) {
    glfwPollEvents();
    ProcessInput(window);

    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    Render();

    glfwSwapBuffers(window);
  }
  ResourceManager::Clear();
  // glfw: terminate, clearing all previously allocated GLFW resources.
  glfwTerminate();
}

void Window::Update() {}

void Window::ProcessInput(GLFWwindow *window) {
  GLint viewport[4];
  if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
    glfwSetWindowShouldClose(window, true);
    return;
  }
  Event event;
  for (EventHandler &handler : eventHandlers_) {
    event = handler.event;
    // 根据 KEY 和 State 获取其处理事件
    if (glfwGetKey(window, event.key) == event.state) {
      handler.handler(event);
    }
  }
}

void Window::FramebufferSizeChanged(GLFWwindow *window, int width, int height) {
  // width_ = width;
  // height_ = height;
  glViewport(0, 0, width, height);
}

void Window::Render() { scene_.Render(); }

void Window::AddEventHandler(Key key, EventState state,
                             EventHandlerFun handler) {
  EventHandler h(Event(key, state), handler);
  eventHandlers_.push_back(h);
}

// void key_callback(GLFWwindow *window, int key, int scancode, int action, int
// mode)
// {
//     if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
//         glfwSetWindowShouldClose(window, true);
//     auto k = static_cast<Key>(key);
//     Event e(k, static_cast<EventState>(action));
// }