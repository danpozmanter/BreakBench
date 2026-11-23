"use strict";

const { Worker, isMainThread, parentPort } = require("node:worker_threads");

if (isMainThread) {
  const worker = new Worker(__filename);
  const list = [1, 2, 3];
  worker.postMessage(list);
  list[0] = 99;
  worker.postMessage("go");
} else {
  let received = [];
  parentPort.on("message", (message) => {
    if (message === "go") {
      console.log(received[0]);
      parentPort.close();
    } else {
      received = message;
    }
  });
}
