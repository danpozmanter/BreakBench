const counts: number[] = new Array<number>(256).fill(0);
for (const b of Buffer.from(process.argv[2] ?? "")) counts[b] = (counts[b] ?? 0) + 1;
console.log(counts.slice(128).reduce((a, b) => a + b, 0));
