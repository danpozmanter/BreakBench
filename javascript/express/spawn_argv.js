// LEVEL: STD

"use strict";

const { execFileSync } = require("child_process");

process.stdout.write(execFileSync("echo", ["hi; touch /tmp/bb_x"]).toString());
