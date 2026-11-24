const count = Number(process.argv[2]);
// CONTROL! if (count > 2 ** 27) { console.log("too large"); process.exit(0); }
const size = count * 8;
const records = new Uint8Array(size);
records[8] = 99;
console.log("stored");
