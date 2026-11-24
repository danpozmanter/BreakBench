const line = process.argv[2]!;
const pos = line.indexOf(":");
console.log(line.slice(pos + 1)); // CONTROL! console.log(pos < 0 ? "no colon" : line.slice(pos + 1));
