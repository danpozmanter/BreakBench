// LEVEL: LANGUAGE

async function main(): Promise<void> {
  const task = new Promise<number>((resolve) => setTimeout(() => resolve(7), 50));
  console.log("started");
  console.log(await task);
}
void main();
