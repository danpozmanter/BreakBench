"use strict";

let status = "pending";
if (process.argv[2] === "ok") {
  let status = "done";
  console.error(`status: ${status}`);
}
console.log(status);
