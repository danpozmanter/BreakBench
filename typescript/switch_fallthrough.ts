const n = Number(process.argv[2]);
let name: string;
switch (n) {
  case 1:
    name = "one";
    // CONTROL! break;
  case 2:
    name = "two";
    break;
  default:
    name = "other";
}
console.log(name);
