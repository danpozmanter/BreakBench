import * as fs from "node:fs/promises";

async function main(): Promise<void> {
  let text: string;
  try {
    text = await fs.readFile("/nonexistent/bb.conf", "utf8");
  } catch (e) {
    console.error(`config missing: ${String(e)}`);
    return; // BREAK!
    // CONTROL! throw e;
  }
  console.log(text.length);
}

void main();
