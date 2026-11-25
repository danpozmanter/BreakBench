"use strict";

let balance = 100;
let openGate = () => {};
const gate = new Promise((resolve) => (openGate = resolve));

async function charge() {
  await gate;
  balance -= 30;
}

async function main() {
  const attempt = charge();
  const timedOut = await Promise.race([
    attempt.then(() => false),
    new Promise((resolve) => setTimeout(() => resolve(true), 100)),
  ]);
  if (timedOut) {
    openGate();
    await charge(); // BREAK!
  }
  await attempt;
  console.log(balance);
}

main();
