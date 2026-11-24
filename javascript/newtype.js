"use strict";

class Meters {
  constructor(v) { this.v = v; }
  add(o) { return new Meters(this.v + o.v); }
}

class Seconds {
  constructor(v) { this.v = v; }
}

console.log(new Meters(2).add(new Seconds(3)).v); // CONTROL! console.log(new Meters(2).v);
