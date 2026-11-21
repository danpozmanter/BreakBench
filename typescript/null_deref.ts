interface User {
  name: string;
}

function findUser(id: number): User | null {
  return id === 1 ? { name: "alice" } : null;
}

const u = findUser(Number(process.argv[2]));
console.log(u.name.length); // BREAK!
console.log(u);
