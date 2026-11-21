// LEVEL: STD

"use strict";

const { Worker, isMainThread, workerData } = require("worker_threads");

if (isMainThread) {
  const slots = new Int32Array(new SharedArrayBuffer(40));
  let done = 0;
  for (const start of [0, 5]) {
    const w = new Worker(__filename, { workerData: { buf: slots.buffer, start } });
    w.on("exit", () => {
      done += 1;
      if (done === 2) console.log(slots.reduce((a, b) => a + b, 0));
    });
  }
} else {
  const view = new Int32Array(workerData.buf);
  for (let i = workerData.start; i < workerData.start + 5; i++) view[i] = i;
}
