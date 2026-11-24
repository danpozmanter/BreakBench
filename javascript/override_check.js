"use strict";

class Shape {
  describe() {
    return "shape";
  }
}

class Circle extends Shape {
  descibe() { // CONTROL! describe() {
    return "circle";
  }
}

const s = new Circle();
console.log(s.describe());
