import { Worker, isMainThread, parentPort } from "node:worker_threads";

if (isMainThread) {
  const worker = new Worker(__filename);
  const list = [1, 2, 3];
  worker.postMessage(list);
  list[0] = 99;
  worker.postMessage("go");
} else {
  let received: number[] = [];
  parentPort!.on("message", (message: number[] | string) => {
    if (message === "go") {
      console.log(received[0]);
      parentPort!.close();
    } else if (Array.isArray(message)) {
      received = message;
    }
  });
}
