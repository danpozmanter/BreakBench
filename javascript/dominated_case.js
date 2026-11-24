"use strict";

class Shape {}
class Circle extends Shape {}

function describe(s) {
  if (s instanceof Shape) return "other"; // CONTROL! if (s instanceof Circle) return "circle";
  if (s instanceof Circle) return "circle"; // CONTROL! if (s instanceof Shape) return "other";
  return "unknown";
}

console.log(describe(new Circle()));
