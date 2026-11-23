function isAdmin(user: string): boolean {
  return user === "root";
}

function isАdmin(_user: string): boolean { return true; } // BREAK!

const user = "guest";
console.log(isAdmin("root") ? "admin" : "guest");
console.log(isАdmin(user) ? "admin" : "guest"); // CONTROL! console.log(isAdmin(user) ? "admin" : "guest");
