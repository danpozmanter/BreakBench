// LEVEL: STD

"use strict";

const { createHash } = require("crypto");

console.log(createHash("sha256").update("abc").digest("hex"));
