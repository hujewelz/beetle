#ifndef VEC2_H
#define VEC2_H

#include <ostream>

namespace bet {
struct vec2 {
  float x;
  float y;

  vec2() : x(0), y(0){};
  vec2(float x_, float y_) : x(x_), y(y_){};

  vec2 operator+(const vec2 &v) const { return vec2(x + v.x, y + v.y); }

  vec2 operator-(const vec2 &v) const { return vec2(x - v.x, y - v.y); }

  vec2 operator*(const vec2 &v) const { return vec2(x * v.x, y * v.y); }

  vec2 operator/(const vec2 &v) const { return vec2(x / v.x, y / v.y); }

  bool operator==(const vec2 &v) const { return x == v.x && y == v.y; }

  friend std::ostream &operator<<(std::ostream &os, vec2 &v) {
    os << "vec2(" << v.x << ", " << v.y << ")" << std::endl;
    return os;
  }
};

}  // namespace bet

#endif