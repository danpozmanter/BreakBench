"use strict";

const users = new Array(3);
users[1] = { name: "bob" };
users[2] = { name: "carol" };
console.log(users[0].name.length); // CONTROL! console.log(users[0] === undefined ? "missing" : users[0].name.length);
