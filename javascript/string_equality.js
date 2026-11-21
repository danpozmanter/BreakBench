"use strict";

const s = "ab" + process.argv[2];
console.log(s == "abc" ? "equal" : "different");
