// LEVEL: STD

"use strict";

const counts = new Map();
for (const w of ["a", "b", "a"]) counts.set(w, (counts.get(w) ?? 0) + 1);
console.log(`a=${counts.get("a")} b=${counts.get("b")}`);
