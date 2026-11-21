// LEVEL: STD

const cause = new Error("not found");
const e = new Error("loading config: not found", { cause });
console.log(e.message);
console.log((e.cause as Error).message);
