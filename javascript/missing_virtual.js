"use strict";

class Shape {
  area() {
    return 0;
  }
  describe() {
    return `area ${this.area()}`;
  }
}

class Square extends Shape {
  area() {
    return 4;
  }
}

console.log(new Square().describe());
