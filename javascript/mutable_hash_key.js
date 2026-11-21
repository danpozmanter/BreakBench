"use strict";

const seen = new Set();
const key = [1, 2];
seen.add(key);
key[0] = 9;
for (const e of seen) {
  console.log(seen.has(e) ? "found" : "lost");
}
