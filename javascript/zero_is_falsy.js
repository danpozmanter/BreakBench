"use strict";

const raw = process.argv[2];
const qty = raw === undefined ? null : Number(raw);
if (qty) { // CONTROL! if (qty !== null) {
  console.log(`have ${qty}`);
} else {
  console.log("missing");
}
