const [y, m, d] = process.argv.slice(2).map(Number) as [number, number, number];
const date = new Date(Date.UTC(y, m - 1, d));
console.log(date.toISOString().slice(0, 10)); // CONTROL! console.log(date.getUTCDate() !== d ? "invalid" : date.toISOString().slice(0, 10));
