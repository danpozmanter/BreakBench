"use strict";

const compare = (a, b) => a.localeCompare(b);

if (compare("x", "x")) console.log("same");
else console.log("different");
