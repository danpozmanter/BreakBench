// LEVEL: LANGUAGE

"use strict";

async function main() {
  const task = new Promise((resolve) => setTimeout(() => resolve(7), 50));
  console.log("started");
  console.log(await task);
}
main();
