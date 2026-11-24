interface Animal {
  sound(): string;
}
class Dog implements Animal {
  sound(): string { return "woof"; }
  fetch(): string { return "stick"; }
}
class Cat implements Animal { // BREAK!
  sound(): string { return "meow"; } // BREAK!
} // BREAK!

const dogs: Dog[] = [new Dog()];
const animals: Animal[] = dogs; // BREAK!
animals[0] = new Cat(); // BREAK!
console.log(dogs[0]!.sound());
