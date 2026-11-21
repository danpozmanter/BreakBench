// LEVEL: STD

import { setTimeout as sleep } from "timers/promises";

async function main(): Promise<void> {
  const work = sleep(5000).then(() => "done");
  const result = await Promise.race([work, sleep(100).then(() => "timed out")]);
  console.log(result);
  process.exit(0);
}
void main();
