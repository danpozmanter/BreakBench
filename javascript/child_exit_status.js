"use strict";

const { execFileSync } = require("node:child_process");

execFileSync("sh", ["-c", "exit 3"]); // CONTROL! try { execFileSync("sh", ["-c", "exit 3"]); } catch { console.log("backup failed"); process.exit(0); }
console.log("backed up");
