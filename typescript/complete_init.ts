type Config = { timeout: number; retries: number };

const c: Config = { timeout: 5, retries: 3 };
const partial: Config = { timeout: 5 }; // BREAK!
console.log(`${c.timeout} ${c.retries}`);
