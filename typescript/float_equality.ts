const x = Number(process.argv[2]);
const y = Number(process.argv[3]);
const a = x + y;
console.log(a === 0.3 ? "equal" : "not equal"); // CONTROL! console.log(Math.abs(a - 0.3) < 1e-9 ? "equal" : "not equal");
