const n = parseInt(process.argv[2]!); // CONTROL! const n = BigInt(process.argv[2] ?? "0");
console.log(String(n));
