type Value = { kind: "int"; value: number } | { kind: "text"; text: string };

const v: Value = { kind: "int", value: 42 } as Value;
console.log(v.text.length); // BREAK!
// CONTROL! console.log(v.kind === "text" ? v.text.length : 0);
