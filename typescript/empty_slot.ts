interface User {
  name: string;
}

const users = new Array<User>(3);
users[1] = { name: "bob" };
users[2] = { name: "carol" };
console.log(users[0].name.length); // BREAK!
// CONTROL! console.log(users[0]?.name.length);
