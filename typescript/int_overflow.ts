const n = Number(process.argv[2]); // BREAK!
console.log(String(n + 1)); // CONTROL! console.log(String(BigInt(process.argv[2] ?? "0") + 1n));
