function find(id: number): number | undefined {
  return id === 1 ? 36 : undefined;
}

console.log("before");
console.log(find(2)! + 1);
