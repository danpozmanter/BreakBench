// LEVEL: STD

"use strict";

const { setTimeout: sleep } = require("timers/promises");

async function main() {
  const work = sleep(5000).then(() => "done");
  const result = await Promise.race([work, sleep(100).then(() => "timed out")]);
  console.log(result);
  process.exit(0);
}
main();
