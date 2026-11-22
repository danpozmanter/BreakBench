"use strict";

const { Worker, isMainThread, parentPort } = require("node:worker_threads");

// A worker cannot reach the main thread's count; each counts its own and sends the total back.
if (isMainThread) {
  let count = 0;
  const run = () =>
    new Promise((resolve) => {
      const w = new Worker(__filename);
      w.on("message", (n) => {
        count += n;
        resolve();
      });
    });
  Promise.all([run(), run()]).then(() => console.log(count));
} else {
  let mine = 0;
  for (let i = 0; i < 1_000_000; i++) mine += 1;
  parentPort.postMessage(mine);
}
