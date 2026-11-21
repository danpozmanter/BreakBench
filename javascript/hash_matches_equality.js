"use strict";

class Point {
  constructor(x, y, label) {
    this.x = x;
    this.y = y;
    this.label = label;
  }

  equals(o) {
    return o.x === this.x && o.y === this.y;
  }
}

console.log(new Set([new Point(1, 2, "a"), new Point(1, 2, "b")]).size);
