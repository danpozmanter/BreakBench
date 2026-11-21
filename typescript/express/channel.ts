// LEVEL: STD

import { MessageChannel } from "worker_threads";

const { port1, port2 } = new MessageChannel();
const got: number[] = [];
port2.on("message", (v: number) => {
  got.push(v);
  if (got.length === 3) {
    console.log(got.join(" "));
    port2.close();
  }
});
for (const v of [1, 2, 3]) port1.postMessage(v);
