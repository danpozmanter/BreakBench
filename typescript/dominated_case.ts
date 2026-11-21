class Shape {}
class Circle extends Shape {}

function describe(s: Shape): string {
  if (s instanceof Shape) return "other"; // BREAK!
  if (s instanceof Circle) return "circle";
  return "other";
}

console.log(describe(new Circle()));
