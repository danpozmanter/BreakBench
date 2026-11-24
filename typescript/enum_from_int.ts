enum Color {
  Red,
  Green,
  Blue,
}

console.log("before");
const c = Number(process.argv[2]) as Color; // CONTROL! const n = Number(process.argv[2]);
console.log(c); // CONTROL! console.log(n in Color ? Color[n as Color] : "invalid");
