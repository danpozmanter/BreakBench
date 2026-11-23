const count = Number(process.argv[2]);
const size = count * 8;
const records = new Uint8Array(size);
records[8] = 99;
console.log("stored");
