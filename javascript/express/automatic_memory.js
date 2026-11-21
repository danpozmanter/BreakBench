// LEVEL: LANGUAGE
"use strict";

class Rec {
  constructor(id, data) {
    this.id = id;
    this.data = data;
  }
}

let last = new Rec(0, new Uint8Array(0));
for (let i = 0; i < 4_000_000; i++) {
  last = new Rec(i, new Uint8Array(1016));
}
console.log(last.id);
