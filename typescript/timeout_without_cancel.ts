let balance = 100;
let openGate: () => void = () => {};
const gate = new Promise<void>((resolve) => (openGate = resolve));

async function charge(): Promise<void> {
  await gate;
  balance -= 30;
}

async function main(): Promise<void> {
  const attempt = charge();
  const timedOut = await Promise.race([
    attempt.then(() => false),
    new Promise<boolean>((resolve) => setTimeout(() => resolve(true), 100)),
  ]);
  if (timedOut) {
    openGate();
    await charge(); // BREAK!
  }
  await attempt;
  console.log(balance);
}

void main();
