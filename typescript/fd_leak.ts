import * as fs from "fs";

const n = Number(process.argv[2]);
fs.writeFileSync("/tmp/bb_fd.txt", "x");
for (let i = 0; i < n; i++) {
  const fd = fs.openSync("/tmp/bb_fd.txt", "r");
  fs.readSync(fd, Buffer.alloc(1));
}
console.log("done");
