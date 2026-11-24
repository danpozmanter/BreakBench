import { writeFileSync } from "node:fs";

writeFileSync("/dev/full", "data\n"); // CONTROL! try { writeFileSync("/dev/full", "data\n"); console.log("saved"); } catch { console.log("failed"); }
console.log("saved"); // BREAK!
