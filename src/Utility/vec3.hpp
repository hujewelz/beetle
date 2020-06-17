#ifndef VEC3_H
#define VEC3_H

#include <ostream>

#include "vec2.hpp"

namespace bet {
struct vec3 {
  float x;
  float y;
  float z;

  vec3();
  vec3(float x_, float y_, float z_) : x(x_), y(y_), z(z_){};
  vec3(const vec3 &v) : x(v.x), y(v.y), z(v.z){};
  vec3(const vec2 &v, float z_) : x(v.x), y(v.y), z(z_){};

  vec3 operator+(const vec3 &v) const {
    return vec3(x + v.x, y + v.y, z + v.z);
  }

  vec3 operator-(const vec3 &v) const {
    return vec3(x - v.x, y - v.y, z - v.z);
  }

  vec3 operator*(const vec3 &v) const {
    return vec3(x * v.x, y * v.y, z * v.z);
  }

  vec3 operator/(const vec3 &v) const {
    return vec3(x / v.x, y / v.y, z / v.z);
  }

  bool operator==(const vec3 &v) const {
    return x == v.x && y == v.y && z == v.z;
  }

  friend std::ostream &operator<<(std::ostream &os, vec3 &v) {
    os << "vec3(" << v.x << ", " << v.y << ", " << v.z << ")" << std::endl;
    return os;
  }
};

}  // namespace bet

#endif