// LEVEL: STD

"use strict";

const path = require("path");

const rel = path.relative("/srv/app", path.resolve("/srv/app", "../../etc/passwd"));
console.log(rel.startsWith("..") ? "outside" : "inside");
