"use strict";

const n = Number(process.argv[2]);
let total = 0;
for (let i = 0; i < n; i++) {
  const a = { next: null, payload: new Uint8Array(2048) };
  const b = { next: a, payload: new Uint8Array(2048) };
  a.next = b;
  const o = { payload: new Uint8Array(2048), callback: null };
  o.callback = () => o.payload.length;
  total += o.callback();
}
console.log(total < 0 ? "unreachable" : "done");
