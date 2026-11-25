"use strict";
const fs = require("node:fs");

const lock = "/tmp/bb_scratch/run.lock";

function checkArgs() {
  if (process.argv.slice(2).includes("--version")) {
    console.log("1.0");
    process.exit(0); // BREAK!
    // CONTROL! return true;
  }
  return false;
}

fs.writeFileSync(lock, "");
try {
  if (!checkArgs()) console.log("working");
} finally {
  fs.unlinkSync(lock);
}
