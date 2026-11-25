function size(n: number): string {
  let label = "small";
  if (n > 5); // CONTROL! if (n > 5)
  {
    label = "big";
  }
  return label;
}

console.log(size(Number(process.argv[2])));
console.log(size(Number(process.argv[3])));
