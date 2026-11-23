class Node {
  data = new Uint8Array(4096).fill(1);
  other: Node | null = null;
}

const n = Number(process.argv[2]);
for (let i = 0; i < n; i++) {
  const parent = new Node();
  const child = new Node();
  parent.other = child;
  child.other = parent;
}
console.log("done");
