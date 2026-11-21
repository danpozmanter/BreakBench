// LEVEL: LANGUAGE

function parsePort(s: string): number | Error {
  const p = Number(s);
  return Number.isInteger(p) ? p : new Error("not a number");
}

const r = parsePort("x");
console.log(r instanceof Error ? "error" : r);
