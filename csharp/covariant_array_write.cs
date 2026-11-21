Dog[] dogs = { new Dog() };
Animal[] animals = dogs;
animals[0] = new Cat();
Console.WriteLine(dogs[0].Sound());

abstract class Animal { public abstract string Sound(); }
class Dog : Animal { public override string Sound() => "woof"; }
class Cat : Animal { public override string Sound() => "meow"; }
