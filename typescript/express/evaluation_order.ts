// LEVEL: LANGUAGE

function pair(a: number, b: number): string {
  return `${a} ${b}`;
}

let n = 0;
const next = (): number => ++n;
console.log(pair(next(), next()));
