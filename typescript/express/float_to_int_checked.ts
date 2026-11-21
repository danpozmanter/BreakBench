// LEVEL: STD

try {
  BigInt(NaN);
  console.log("fits");
} catch {
  console.log("does not fit");
}
