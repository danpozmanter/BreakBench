interface Node2 {
  next: Node2 | null;
  payload: Uint8Array;
}

interface Obj {
  payload: Uint8Array;
  callback: (() => number) | null;
}

const n = Number(process.argv[2]);
let total = 0;
for (let i = 0; i < n; i++) {
  const a: Node2 = { next: null, payload: new Uint8Array(2048) };
  const b: Node2 = { next: a, payload: new Uint8Array(2048) };
  a.next = b;
  const o: Obj = { payload: new Uint8Array(2048), callback: null };
  o.callback = () => o.payload.length;
  total += o.callback();
}
console.log(total < 0 ? "unreachable" : "done");
