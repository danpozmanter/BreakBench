// LEVEL: LANGUAGE

async function work(): Promise<number> {
  throw new Error("bad input");
}

async function main(): Promise<void> {
  try {
    console.log(await work());
  } catch (e) {
    console.log(`worker failed: ${(e as Error).message}`);
  }
}
void main();
