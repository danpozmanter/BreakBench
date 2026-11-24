"use strict";

function show(f) {
  console.log(f.toFixed(0)); // CONTROL! console.log(f.toString());
}

show(Number(process.argv[2])); // CONTROL! show(BigInt(process.argv[2]));
