interface User {
  name: string;
  age: number;
}

const user: User = JSON.parse('{"name": "Ada"}'); // CONTROL! const user: User = JSON.parse('{"name": "Ada", "age": 36}');
console.log(user.age + 1);
