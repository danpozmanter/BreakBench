"use strict";
const { Worker, isMainThread, workerData } = require("node:worker_threads");
if (isMainThread) {
  const shared = new SharedArrayBuffer(12);
  Promise.all([0, 1].map(() => new Promise((resolve) => {
    const worker = new Worker(__filename, { workerData: shared });
    worker.on("exit", resolve);
  }))).then(() => console.log(Atomics.load(new Int32Array(shared), 2)));
} else {
  const cells = new Int32Array(workerData);
  const available = Atomics.load(cells, 0) === 0;
  const arrived = Atomics.add(cells, 1, 1) + 1;
  if (arrived === 2) Atomics.notify(cells, 1, 1);
  else Atomics.wait(cells, 1, 1);
  if (available) {
    Atomics.store(cells, 0, 1);
    Atomics.add(cells, 2, 1);
  }
}
