"use strict";
const fs = require("node:fs");

const lock = "/tmp/bb_scratch/reader.lock";

function* rows() {
  fs.writeFileSync(lock, "");
  try {
    yield "alpha";
    yield "beta";
    yield "gamma";
  } finally {
    fs.unlinkSync(lock);
  }
}

for (const line of rows()) {
  console.log(line);
  break;
}
