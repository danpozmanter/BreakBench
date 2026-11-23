import { execFileSync } from "node:child_process";

execFileSync("sh", ["-c", "exit 3"]);
console.log("backed up");
