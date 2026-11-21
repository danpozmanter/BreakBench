const stock: Record<string, number> = { apple: 3, plum: 4 };
const name: string = process.argv[2]!;
console.log(stock[name] + 5); // CONTROL! console.log(stock[name] === undefined ? "unknown" : stock[name] + 5);
