class Point {
  constructor(
    readonly x: number,
    readonly y: number,
    readonly label: string,
  ) {}

  equals(o: Point): boolean {
    return o.x === this.x && o.y === this.y;
  }
}

console.log(new Set([new Point(1, 2, "a"), new Point(1, 2, "b")]).size);
