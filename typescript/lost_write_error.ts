import { writeFileSync } from "node:fs";

writeFileSync("/dev/full", "data\n");
console.log("saved");
