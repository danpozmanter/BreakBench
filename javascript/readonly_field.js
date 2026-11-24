"use strict";

const c = Object.freeze({ port: 8080 });
c.port = 1; // BREAK!
console.log(c.port);
