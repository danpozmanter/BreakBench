"use strict";
const decoded = { name: null };
console.log(decoded.name.length); // CONTROL! console.log(decoded.name === null ? "no name" : decoded.name.length);
