"use strict";

console.log(/^(a+)+$/.test(process.argv[2]) ? "match" : "no match");
