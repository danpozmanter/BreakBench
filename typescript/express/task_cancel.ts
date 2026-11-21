// LEVEL: STD

import { setTimeout as sleep } from "timers/promises";

async function spin(signal: AbortSignal): Promise<void> {
  while (!signal.aborted) await sleep(1);
}

async function main(): Promise<void> {
  const controller = new AbortController();
  const task = spin(controller.signal);
  await sleep(20);
  controller.abort();
  await task;
  console.log("stopped");
}
void main();
