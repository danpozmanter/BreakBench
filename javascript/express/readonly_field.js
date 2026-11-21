// LEVEL: LANGUAGE

"use strict";

const c = Object.freeze({ port: 8080 });
try {
  c.port = 1;
} catch (e) {
  if (!(e instanceof TypeError)) throw e;
}
console.log(c.port);
