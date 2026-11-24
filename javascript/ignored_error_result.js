"use strict";

const fs = require("fs");

function save(path) {
  fs.writeFileSync(path, "data");
}

save("/dev/null/out.txt"); // CONTROL! try { save("/dev/null/out.txt"); console.log("saved"); } catch { console.log("failed"); }
console.log("saved"); // BREAK!
