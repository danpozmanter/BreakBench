"use strict";

const fs = require("node:fs");

fs.writeFileSync("/dev/full", "data\n");
console.log("saved");
