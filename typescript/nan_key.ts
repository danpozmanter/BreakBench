const a = Number("NaN");
const b = Number("NaN");
const s = new Set([a]);
console.log(s.has(b) ? "found" : "missing");
