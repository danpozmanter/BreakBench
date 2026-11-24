function findName(id: number): string | null {
  return id === 1 ? "alice" : null;
}

const name = findName(Number(process.argv[2]));
console.log(`hello, ${name}`); // CONTROL! console.log(`hello, ${name ?? "nobody"}`);
