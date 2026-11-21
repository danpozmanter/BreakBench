// LEVEL: LANGUAGE

class Config {
  constructor(readonly name: string) {}
}

const c = new Config("app");
const missing: Config = null; // REJECT!
console.log(c.name);
