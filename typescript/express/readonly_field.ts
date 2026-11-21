// LEVEL: LANGUAGE

class Config {
  constructor(readonly port: number) {}
}

const c = new Config(8080);
c.port = 1; // REJECT!
console.log(c.port);
