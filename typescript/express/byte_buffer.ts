// LEVEL: STD

const buf = new ArrayBuffer(0, { maxByteLength: 1 << 20 });
const view = new Uint8Array(buf);
for (let i = 0; i < 100_000; i++) {
  buf.resize(i + 1);
  view[i] = i & 0xff;
}
console.log(buf.byteLength);
