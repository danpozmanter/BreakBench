"use strict";

const grid = Array(3).fill(Array(3).fill(0)); // CONTROL! const grid = Array.from({ length: 3 }, () => Array(3).fill(0));
grid[0][0] = 1;
console.log(grid.flat().filter((cell) => cell === 1).length);
