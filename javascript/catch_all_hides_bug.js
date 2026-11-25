"use strict";

function parseOrder(line) {
  const parts = line.split(",");
  const qty = Number.parseInt(parts[2], 10); // BREAK!
  // CONTROL! const qty = Number.parseInt(parts[1], 10);
  if (Number.isNaN(qty)) throw new Error(`invalid quantity in ${line}`);
  return qty;
}

try {
  console.log(parseOrder("widget,5"));
} catch {
  console.log("invalid order");
}
