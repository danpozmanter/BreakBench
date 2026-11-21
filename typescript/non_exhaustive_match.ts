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
    // CONTROL! case Color.Blue: return "blue";
  }
}

console.log(name(Number(process.argv[2]) as Color));
