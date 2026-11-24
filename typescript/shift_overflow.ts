const s = Number(process.argv[2]);
console.log(1 << s); // CONTROL! console.log(String(1n << BigInt(s)));
