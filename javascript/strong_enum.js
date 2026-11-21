"use strict";

const Color = Object.freeze({ RED: 0, GREEN: 1, BLUE: 2 });

function name(c) {
  switch (c) {
    case Color.RED:
      return "red";
    case Color.GREEN:
      return "green";
    case Color.BLUE:
      return "blue";
  }
}

console.log(name(7));
