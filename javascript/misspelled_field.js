"use strict";

class Config {
  color = "blue";
}

const cfg = new Config();
cfg.colour = "red"; // CONTROL! cfg.color = "red";
console.log(cfg.color);
