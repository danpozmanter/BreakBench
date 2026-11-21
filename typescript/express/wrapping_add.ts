// LEVEL: STD

const n = BigInt(process.argv[2] ?? "0");
console.log(String(BigInt.asIntN(64, n + 1n)));
