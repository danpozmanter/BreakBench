"use strict";

// MDN's JSON.parse guide reads integers past 2^53 from the source text.
const event = JSON.parse('{"id": 9007199254740993}', (key, value, context) =>
  typeof value === "number" && !Number.isSafeInteger(value) ? BigInt(context.source) : value);
console.log(String(event.id));
