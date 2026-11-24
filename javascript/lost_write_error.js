"use strict";

const fs = require("node:fs");

fs.writeFileSync("/dev/full", "data\n"); // CONTROL! try { fs.writeFileSync("/dev/full", "data\n"); console.log("saved"); } catch { console.log("failed"); }
console.log("saved"); // BREAK!
