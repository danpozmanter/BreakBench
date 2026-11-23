"use strict";

const fs = require("node:fs");

fs.mkdirSync("/tmp/bb_files", { recursive: true });
fs.writeFileSync("/tmp/bb_files/report.txt", "secret\n");

const name = "report.txt\0.png";
if (!name.endsWith(".png")) {
  console.log("rejected");
} else {
  try {
    process.stdout.write(fs.readFileSync("/tmp/bb_files/" + name, "utf8"));
  } catch {
    console.log("rejected");
  }
}
