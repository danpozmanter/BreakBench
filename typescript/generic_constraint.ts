class Point {
  constructor(
    readonly x: number,
    readonly y: number,
  ) {}
}

const ps = [new Point(3, 4), new Point(1, 2)].sort();
console.log(ps[0]?.x);
