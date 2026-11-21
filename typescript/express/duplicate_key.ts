// LEVEL: LANGUAGE

const m: Record<string, number> = { a: 1, b: 2 };
console.log(Object.keys(m).length);
console.log(Object.keys({ a: 1, a: 2 }).length); // REJECT!
