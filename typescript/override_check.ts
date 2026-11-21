class Shape {
  describe(): string {
    return "shape";
  }
}

class Circle extends Shape {
  override describe(): string {
    return "circle";
  }
  override descibe(): string { return "circle"; } // BREAK!
}

const s: Shape = new Circle();
console.log(s.describe());
