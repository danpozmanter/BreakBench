// LEVEL: LANGUAGE

"use strict";

const re = /^[a-z]+[0-9]{2}$/;
console.log(`${re.test("abc12")} ${re.test("abc1")}`);
