"use strict";

async function firstAnswer() {
  let deliver = () => {};
  const answer = new Promise((resolve) => (deliver = resolve));
  const workers = [0, 1].map(async () => deliver(42));
  return [await answer, workers];
}

async function main() {
  const [answer, workers] = await firstAnswer();
  console.log(answer);
  await Promise.all(workers);
  console.log("done");
}

main();
