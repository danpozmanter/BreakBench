// LEVEL: LANGUAGE

function walk(n: number): number {
  return walk(n + 1) + 1;
}
try {
  walk(0);
} catch (e) {
  if (e instanceof RangeError) console.log("stack overflow");
}
