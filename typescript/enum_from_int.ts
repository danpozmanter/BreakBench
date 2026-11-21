enum Color {
  Red,
  Green,
  Blue,
}

console.log("before");
const c = Number(process.argv[2]) as Color;
console.log(c);
