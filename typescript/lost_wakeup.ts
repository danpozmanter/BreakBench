import { Worker, isMainThread, parentPort } from "node:worker_threads";

if (isMainThread) {
  const worker = new Worker(__filename);
  worker.postMessage("wake");
} else {
  parentPort!.once("message", () => {
    console.log("done");
    parentPort!.close();
  });
}
