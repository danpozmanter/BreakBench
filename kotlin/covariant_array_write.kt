interface Animal { fun sound(): String }
class Dog : Animal { override fun sound() = "woof" }
class Cat : Animal { override fun sound() = "meow" }

fun main() {
    val dogs: MutableList<Dog> = mutableListOf(Dog())
    val animals: MutableList<Animal> = dogs // BREAK!
    animals[0] = Cat() // BREAK!
    println(dogs[0].sound())
}
