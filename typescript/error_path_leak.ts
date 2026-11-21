function processRequest(request: string, id: number): void {
  const buf = new Uint8Array(4096);
  buf.set(new TextEncoder().encode(`${request}#${id}`));
  if (buf[0] !== "{".charCodeAt(0)) throw new Error("invalid request");
}

const n = Number(process.argv[2]);
let failures = 0;
for (let i = 0; i < n; i++) {
  try {
    processRequest("not json", i);
  } catch {
    failures++;
  }
}
console.log(failures === n ? "done" : "unexpected");
