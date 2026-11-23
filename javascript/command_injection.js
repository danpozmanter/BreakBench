"use strict";

const fs = require("fs");
const { execFileSync } = require("child_process");

fs.rmSync("/tmp/bb_pwned", { force: true });
execFileSync("echo", [process.argv[2]], { stdio: "ignore" });
console.log(fs.existsSync("/tmp/bb_pwned") ? "injected" : "safe");
