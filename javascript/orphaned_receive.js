"use strict";

async function main() {
  let deliver = () => {};
  const answer = new Promise((resolve) => (deliver = resolve));
  void (async () => {
    const n = Number.parseInt("x", 10);
    if (Number.isNaN(n)) throw new Error("not a number: x");
    deliver(n);
  })();
  console.log(await answer);
}

main();
