// LEVEL: LANGUAGE

function inner(): string {
  return new Error().stack ?? "";
}
console.log(inner().includes("inner") ? "inner" : "missing");
