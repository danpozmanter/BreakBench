const n = Number(process.argv[2]);
const heads: Uint8Array[] = [];
const prefixes: string[] = [];
for (let i = 0; i < n; i++) {
  const buf = new Uint8Array(32768).fill(i & 255);
  heads.push(buf.slice(0, 16));
  const big = String.fromCharCode(97 + (i % 26)).repeat(32768);
  prefixes.push(big.substring(0, 16));
}
console.log(heads.length);
