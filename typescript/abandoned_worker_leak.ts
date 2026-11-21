async function answer(seed: number): Promise<number[]> {
  await null;
  return new Array<number>(8192).fill(seed);
}

async function main(): Promise<void> {
  const rounds = Number(process.argv[2]!);
  for (let i = 0; i < rounds; i++) {
    const first = await Promise.race([answer(i), answer(i + 1)]);
    if (first.length !== 8192) console.log("short");
  }
  console.log("done");
}

main();
