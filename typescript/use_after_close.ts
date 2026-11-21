import * as fs from "fs";

const fd = fs.openSync("/tmp/bb_close.txt", "w");
fs.writeSync(fd, "a");
fs.closeSync(fd);
fs.writeSync(fd, "b"); // BREAK!
console.log("ok");
