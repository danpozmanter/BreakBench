class Config {
  constructor(readonly port: number) {}
}

const c = new Config(8080);
c.port = 1; // BREAK!
console.log(c.port);
