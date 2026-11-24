class Point {
  constructor(
    readonly x: number,
    readonly y: number,
  ) {}
}

const ps = [new Point(3, 4), new Point(1, 2)].sort(); // CONTROL! const ps = [new Point(3, 4), new Point(1, 2)].sort((a, b) => a.x - b.x);
console.log(ps[0]?.x);
