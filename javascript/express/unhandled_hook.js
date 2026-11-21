// LEVEL: STD

"use strict";

process.on("uncaughtException", () => {
  console.log("hook ran");
  process.exit(1);
});
throw new Error("boom");
