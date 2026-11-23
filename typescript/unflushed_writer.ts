import * as fs from "node:fs";

const report = fs.createWriteStream("/tmp/bb_report.txt");
report.write("total=42\n");
