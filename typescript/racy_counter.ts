import { Worker, isMainThread, parentPort } from "node:worker_threads";

// A worker cannot reach the main thread's variables; each counts on its own and sends its count back.
if (isMainThread) {
  let counter = 0;
  const run = () =>
    new Promise<void>((resolve) => {
      const w = new Worker(__filename);
      w.on("message", (n: number) => {
        counter += n;
        resolve();
      });
    });
  Promise.all(Array.from({ length: 8 }, run)).then(() => console.log(counter));
} else {
  let n = 0;
  for (let i = 0; i < 1_000_000; i++) n++;
  parentPort!.postMessage(n);
}
