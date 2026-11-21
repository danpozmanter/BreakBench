// LEVEL: LANGUAGE

function move({ dx, dy }: { dx: number; dy: number }): void {
  console.log(`${dx} ${dy}`);
}

move({ dx: 3, dy: 4 });
move(3, 4); // REJECT!
