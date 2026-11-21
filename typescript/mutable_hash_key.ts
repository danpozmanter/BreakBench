const seen = new Set<number[]>();
const key = [1, 2];
seen.add(key);
key[0] = 9;
for (const e of seen) {
  console.log(seen.has(e) ? "found" : "lost");
}
