"use strict";

const { execFileSync } = require("node:child_process");

execFileSync("sh", ["-c", "exit 3"]);
console.log("backed up");
