abstract class Animal {
  String sound();
}

class Dog extends Animal {
  @override
  String sound() => "woof";
}

class Cat extends Animal {
  @override
  String sound() => "meow";
}

void main() {
  final List<Dog> dogs = [Dog()];
  final List<Animal> animals = dogs;
  animals[0] = Cat(); // BREAK!
  print(dogs[0].sound());
}
