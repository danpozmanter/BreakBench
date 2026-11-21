"use strict";

const fs = require("fs");

const fd = fs.openSync("/tmp/bb_close.txt", "w");
fs.writeSync(fd, "a");
fs.closeSync(fd);
fs.writeSync(fd, "b");
console.log("ok");
