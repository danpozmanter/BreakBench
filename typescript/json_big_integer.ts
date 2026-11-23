// MDN's JSON.parse guide reads integers past 2^53 from the source text.
const event: { id: number | bigint } = JSON.parse(
  '{"id": 9007199254740993}',
  (_key: string, value: unknown, context?: { source: string }) =>
    typeof value === "number" && !Number.isSafeInteger(value) && context ? BigInt(context.source) : value,
);
console.log(String(event.id));
