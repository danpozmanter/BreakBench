// LEVEL: STD

"use strict";

const { setTimeout: sleep } = require("timers/promises");

async function spin(signal) {
  while (!signal.aborted) await sleep(1);
}

async function main() {
  const controller = new AbortController();
  const task = spin(controller.signal);
  await sleep(20);
  controller.abort();
  await task;
  console.log("stopped");
}
main();
