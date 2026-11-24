const a = Number(process.argv[2]) !== 0;
const b = true;
let r = "unset";
if (a) // CONTROL! if (a) {
  if (b) r = "both";
else // CONTROL! } else
  r = "not a";
console.log(r);
