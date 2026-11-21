async function sum(items: string[]): Promise<number> {
  let total = 0;
  for (const item of items) {
    const n = Number(item);
    if (Number.isNaN(n)) throw new Error(`bad number: ${item}`);
    total += n;
  }
  return total;
}

async function main(): Promise<void> {
  const worker = sum(process.argv.slice(2));
  const total = await worker;
  console.log(`total ${total}`);
}

main();
