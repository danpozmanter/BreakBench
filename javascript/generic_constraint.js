"use strict";

class Point {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }
}

const ps = [new Point(3, 4), new Point(1, 2)].sort();
console.log(ps[0].x);
