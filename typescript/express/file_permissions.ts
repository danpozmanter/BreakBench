// LEVEL: STD

import * as fs from "node:fs";

const file = "/tmp/bb_perm.txt";
fs.rmSync(file, { force: true });
fs.writeFileSync(file, "", { mode: 0o600, flag: "wx" });
console.log((fs.statSync(file).mode & 0o777).toString(8));
fs.rmSync(file);
