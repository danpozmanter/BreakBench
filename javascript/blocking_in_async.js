"use strict";

async function job() {
  await new Promise((resolve) => setTimeout(resolve, 500));
}

async function main() {
  const start = performance.now();
  await Promise.all([job(), job()]);
  console.log(performance.now() - start < 800 ? "concurrent" : "serial");
}

main();
