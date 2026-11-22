async function job(): Promise<void> {
  await new Promise((resolve) => setTimeout(resolve, 500));
}

async function main(): Promise<void> {
  const start = performance.now();
  await Promise.all([job(), job()]);
  console.log(performance.now() - start < 800 ? "concurrent" : "serial");
}

main();
