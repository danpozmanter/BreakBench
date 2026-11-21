enum Color {
  Red,
  Green,
  Blue,
}

function name(c: Color): string {
  switch (c) {
    case Color.Red:
      return "red";
    case Color.Green:
      return "green";
    case Color.Blue:
      return "blue";
  }
}

const c = Color.Green;
console.log(name(7)); // BREAK!
console.log(name(c));
