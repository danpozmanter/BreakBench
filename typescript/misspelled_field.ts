class Config {
  color = "blue";
}

const cfg = new Config();
cfg.colour = "red"; // BREAK!
console.log(cfg.color);
