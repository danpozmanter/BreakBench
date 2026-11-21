// LEVEL: STD

"use strict";

const { randomBytes } = require("crypto");

console.log(randomBytes(16).toString("hex"));
