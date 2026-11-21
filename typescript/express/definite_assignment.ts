// LEVEL: LANGUAGE

const ready = process.argv.length < 10;
let x: number;
if (ready) x = 5;
else x = 5;
let y: number; // REJECT!
if (ready) y = 1; // REJECT!
console.log(y); // REJECT!
console.log(x);
