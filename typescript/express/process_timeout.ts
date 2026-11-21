// LEVEL: STD

import { spawn } from "node:child_process";

const child = spawn("sleep", ["10"]);
setTimeout(() => child.kill("SIGKILL"), 100);
child.on("exit", (_code, signal) => console.log(signal ? "killed" : "finished"));
