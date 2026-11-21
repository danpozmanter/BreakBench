const store: number[] = [];

async function save(store: number[]): Promise<void> {
  await new Promise((resolve) => setTimeout(resolve, 50));
  store.push(1);
}

async function main(): Promise<void> {
  save(store); // CONTROL! await save(store);
  console.log(store.length);
}

main();
