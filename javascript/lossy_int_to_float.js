"use strict";

function show(f) {
  console.log(f.toFixed(0));
}

show(Number(process.argv[2]));
