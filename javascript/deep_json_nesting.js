"use strict";

const depth = Number(process.argv[2]);
// CONTROL! if (depth > 1000) { console.log("refused"); process.exit(0); }
JSON.parse("[".repeat(depth) + "]".repeat(depth));
console.log("parsed");
