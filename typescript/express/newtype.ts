// LEVEL: LANGUAGE

type Meters = number & { readonly unit: "m" };
const meters = (v: number) => v as Meters;
const add = (a: Meters, b: Meters): Meters => meters(a + b);

const total = add(meters(2), meters(3));
type Seconds = number & { readonly unit: "s" }; console.log(add(meters(2), 3 as Seconds)); // REJECT!
console.log(total);
