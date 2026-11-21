"use strict";

function make() {
  const local = { value: 4242 };
  return local;
}

function clobber() {
  return new Array(64).fill(7)[63];
}

const r = make();
clobber();
console.log(r.value);
