"use strict";

const v = { kind: "int", value: 42 };
console.log(v.text.length); // CONTROL! console.log(v.kind === "text" ? v.text.length : "not text");
