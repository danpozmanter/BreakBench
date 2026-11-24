function isOdd(n: number): boolean {
  return n % 2 === 1; // CONTROL! return n % 2 !== 0;
}

console.log(isOdd(Number(process.argv[2]!)) ? "odd" : "even");
