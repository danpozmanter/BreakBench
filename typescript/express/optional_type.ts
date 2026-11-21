// LEVEL: LANGUAGE

const o: number | undefined = [undefined, 1][process.argv.length - 2];
console.log(o + 1); // REJECT!
console.log(o === undefined ? "none" : "some");
