import * as fs from "fs";
import { execSync } from "child_process";

fs.rmSync("/tmp/bb_pwned", { force: true });
execSync(`echo ${process.argv[2]}`, { stdio: "ignore" });
console.log(fs.existsSync("/tmp/bb_pwned") ? "injected" : "safe");
