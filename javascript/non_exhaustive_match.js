"use strict";

const Color = Object.freeze({ Red: 0, Green: 1, Blue: 2 });

function name(c) {
  switch (c) {
    case Color.Red:
      return "red";
    case Color.Green:
      return "green";
    // CONTROL! case Color.Blue: return "blue";
  }
}

console.log(name(Number(process.argv[2])));
