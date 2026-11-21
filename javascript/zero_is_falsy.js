"use strict";

const raw = process.argv[2];
const qty = raw === undefined ? null : Number(raw);
if (qty) {
  console.log(`have ${qty}`);
} else {
  console.log("missing");
}
