"use strict";

class Dog {
  sound() { return "woof"; }
}
class Cat {
  sound() { return "meow"; }
}

const dogs = [new Dog()];
const animals = dogs;
animals[0] = new Cat();
console.log(dogs[0].sound());
