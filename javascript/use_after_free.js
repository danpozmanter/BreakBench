"use strict";

let a = { value: 1234 };
const b = a;
a = null;
const c = { value: 6666 };
console.log(b.value);
