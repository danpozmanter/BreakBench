interface Animal {
  sound(): string;
}
class Dog implements Animal {
  sound(): string { return "woof"; }
  fetch(): string { return "stick"; }
}
class Cat implements Animal {
  sound(): string { return "meow"; }
}

const dogs: Dog[] = [new Dog()];
const animals: Animal[] = dogs;
animals[0] = new Cat();
console.log(dogs[0]!.sound());
