class Shape {
  area(): number {
    return 0;
  }
  describe(): string {
    return `area ${this.area()}`;
  }
}

class Square extends Shape {
  override area(): number {
    return 4;
  }
}

console.log(new Square().describe());
