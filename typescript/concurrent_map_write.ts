import { Worker, isMainThread, parentPort, workerData } from "node:worker_threads";

// A worker cannot reach the main thread's map; each builds its own keys and sends them back.
if (isMainThread) {
  const m = new Map<number, boolean>();
  const run = (t: number) =>
    new Promise<void>((resolve) => {
      const w = new Worker(__filename, { workerData: t });
      w.on("message", (keys: number[]) => {
        for (const k of keys) m.set(k, true);
        resolve();
      });
    });
  Promise.all([0, 1, 2, 3, 4, 5, 6, 7].map(run)).then(() => console.log(m.size));
} else {
  const keys: number[] = [];
  for (let i = 0; i < 100_000; i++) keys.push((workerData as number) * 100_000 + i);
  parentPort!.postMessage(keys);
}
