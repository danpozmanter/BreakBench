// LEVEL: LANGUAGE

class Rec {
  constructor(
    readonly id: number,
    readonly data: Uint8Array,
  ) {}
}

let last = new Rec(0, new Uint8Array(0));
for (let i = 0; i < 4_000_000; i++) {
  last = new Rec(i, new Uint8Array(1016));
}
console.log(last.id);
