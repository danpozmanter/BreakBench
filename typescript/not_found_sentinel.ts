const line = process.argv[2]!;
const pos = line.indexOf(":");
console.log(line.slice(pos + 1));
