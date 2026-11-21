// LEVEL: STD

import { execFileSync } from "child_process";

process.stdout.write(execFileSync("echo", ["hi; touch /tmp/bb_x"]).toString());
