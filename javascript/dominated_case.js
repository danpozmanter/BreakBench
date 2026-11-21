"use strict";

class Shape {}
class Circle extends Shape {}

function describe(s) {
  if (s instanceof Shape) return "other";
  if (s instanceof Circle) return "circle";
  return "unknown";
}

console.log(describe(new Circle()));
