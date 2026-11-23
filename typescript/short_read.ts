import { execFileSync } from "node:child_process";

console.log(execFileSync("sh", ["-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"]).toString());
