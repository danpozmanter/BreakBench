// LEVEL: LANGUAGE

type Shape = { kind: "circle"; r: number } | { kind: "square"; side: number };

function name(s: Shape): string {
  switch (s.kind) {
    case "circle":
      return "circle";
    case "square":
      return "square";
  }
}

function bad(s: Shape): string { switch (s.kind) { case "circle": return "circle"; } } // REJECT!
console.log(bad({ kind: "circle", r: 1 })); // REJECT!

console.log(name({ kind: "circle", r: 1 }));
