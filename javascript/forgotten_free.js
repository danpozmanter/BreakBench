"use strict";

class Rec {
  constructor() {
    this.data = new Uint8Array(4096).fill(1);
  }
}

const n = Number(process.argv[2]);
let seen = 0;
for (let i = 0; i < n; i++) {
  const rec = new Rec();
  seen += rec.data[0];
}
console.log(seen === n ? "done" : "lost");
