import std.stdio;

abstract class Animal { abstract string sound(); }
class Dog : Animal { override string sound() { return "woof"; } }
class Cat : Animal { override string sound() { return "meow"; } }

void main()
{
    Dog[] dogs = [new Dog()];
    Animal[] animals = dogs; // BREAK!
    animals[0] = new Cat(); // BREAK!
    writeln(dogs[0].sound());
}
