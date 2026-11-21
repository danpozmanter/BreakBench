// LEVEL: STD

import { Worker } from "worker_threads";

const w = new Worker("throw new Error('boom')", { eval: true });
w.on("error", () => console.log("worker crashed"));
