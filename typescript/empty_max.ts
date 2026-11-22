const xs = process.argv.slice(2).map(Number);
console.log(Math.max(...xs) + 1);
