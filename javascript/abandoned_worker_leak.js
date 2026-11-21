"use strict";

async function answer(seed) {
  await null;
  return new Array(8192).fill(seed);
}

async function main() {
  const rounds = Number(process.argv[2]);
  for (let i = 0; i < rounds; i++) {
    const first = await Promise.race([answer(i), answer(i + 1)]);
    if (first.length !== 8192) console.log("short");
  }
  console.log("done");
}

main();
