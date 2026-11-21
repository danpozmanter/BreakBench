// LEVEL: STD

"use strict";

const { spawnSync } = require("child_process");

console.log(spawnSync("false").status);
