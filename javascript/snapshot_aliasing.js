"use strict";

function applyUpdate(weights) {
  weights[1] = 5;
  weights[3] = 0;
}

const weights = [3, 3, 3, 3];
const before = weights; // CONTROL! const before = [...weights];
applyUpdate(weights);
console.log(weights.filter((w, i) => before[i] !== w).length);
