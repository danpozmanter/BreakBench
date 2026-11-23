"use strict";

let balance = 100;

async function withdraw(amount) {
  if (balance >= amount) {
    await new Promise((resolve) => setTimeout(resolve, 10));
    balance -= amount;
  }
}

async function main() {
  await Promise.all([withdraw(80), withdraw(80)]);
  console.log(balance);
}

main();
