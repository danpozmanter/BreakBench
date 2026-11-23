import * as fs from "fs";
import { execFileSync } from "child_process";

fs.rmSync("/tmp/bb_pwned", { force: true });
execFileSync("echo", [process.argv[2] ?? ""], { stdio: "ignore" });
console.log(fs.existsSync("/tmp/bb_pwned") ? "injected" : "safe");
