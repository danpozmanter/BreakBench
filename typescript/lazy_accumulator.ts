import * as fs from "node:fs";

const count = Number(process.argv[2]);
const source = fs.openSync("/dev/zero", "r");
let total = 0;
for (let i = 0; i < count; i++) {
  const message = Buffer.alloc(4096);
  total += fs.readSync(source, message, 0, message.length, null);
}
fs.closeSync(source);
console.log(total);
