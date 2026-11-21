// LEVEL: STD

"use strict";

const { Worker, isMainThread, workerData } = require("worker_threads");

if (isMainThread) {
  const counter = new BigInt64Array(new SharedArrayBuffer(8));
  let done = 0;
  for (let i = 0; i < 2; i++) {
    const w = new Worker(__filename, { workerData: counter.buffer });
    w.on("exit", () => {
      done += 1;
      if (done === 2) console.log(String(Atomics.load(counter, 0)));
    });
  }
} else {
  const counter = new BigInt64Array(workerData);
  for (let i = 0; i < 100_000; i++) Atomics.add(counter, 0, 1n);
}
