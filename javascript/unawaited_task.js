"use strict";

const store = [];

async function save(store) {
  await new Promise((resolve) => setTimeout(resolve, 50));
  store.push(1);
}

async function main() {
  save(store); // CONTROL! await save(store);
  console.log(store.length);
}

main();
