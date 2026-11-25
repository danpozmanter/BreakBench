"use strict";
const fs = require("node:fs/promises");

async function main() {
  let text;
  try {
    text = await fs.readFile("/nonexistent/bb.conf", "utf8");
  } catch (e) {
    console.error(`config missing: ${e.message}`);
    return; // BREAK!
    // CONTROL! throw e;
  }
  console.log(text.length);
}

main();
