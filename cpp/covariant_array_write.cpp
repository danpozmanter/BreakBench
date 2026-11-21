#include <iostream>
#include <memory>
#include <string>
#include <vector>

struct Animal { virtual ~Animal() = default; virtual std::string sound() const = 0; };
struct Dog : Animal { std::string sound() const override { return "woof"; } };
struct Cat : Animal { std::string sound() const override { return "meow"; } };

int main() {
    std::vector<Dog *> dogs{new Dog()};
    std::vector<Animal *> &animals = dogs; // BREAK!
    animals[0] = new Cat(); // BREAK!
    std::cout << dogs[0]->sound() << "\n";
}
