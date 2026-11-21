// LEVEL: LANGUAGE

"use strict";

async function work() {
  throw new Error("bad input");
}

async function main() {
  try {
    console.log(await work());
  } catch (e) {
    console.log(`worker failed: ${e.message}`);
  }
}
main();
