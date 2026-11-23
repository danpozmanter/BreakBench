import { Worker, isMainThread, workerData } from "node:worker_threads";

if (isMainThread) {
  const shared = new SharedArrayBuffer(12);
  Promise.all([0, 1].map(() => new Promise<void>((resolve) => {
    const worker = new Worker(__filename, { workerData: shared });
    worker.on("exit", () => resolve());
  }))).then(() => console.log(Atomics.load(new Int32Array(shared), 2)));
} else {
  const cells = new Int32Array(workerData as SharedArrayBuffer);
  const available = Atomics.load(cells, 0) === 0; // BREAK!
  // CONTROL! const available = Atomics.compareExchange(cells, 0, 0, 1) === 0;
  const arrived = Atomics.add(cells, 1, 1) + 1;
  if (arrived === 2) Atomics.notify(cells, 1, 1);
  else Atomics.wait(cells, 1, 1);
  if (available) {
    Atomics.store(cells, 0, 1);
    Atomics.add(cells, 2, 1);
  }
}
