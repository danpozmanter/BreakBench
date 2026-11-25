async function firstAnswer(): Promise<[number, Promise<void>[]]> {
  let deliver: (n: number) => void = () => {};
  const answer = new Promise<number>((resolve) => (deliver = resolve));
  const workers = [0, 1].map(async () => deliver(42));
  return [await answer, workers];
}

async function main(): Promise<void> {
  const [answer, workers] = await firstAnswer();
  console.log(answer);
  await Promise.all(workers);
  console.log("done");
}

void main();
