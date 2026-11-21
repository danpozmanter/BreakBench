trait Animal { def sound: String }
class Dog extends Animal { def sound = "woof" }
class Cat extends Animal { def sound = "meow" }

object Main {
  def main(args: Array[String]): Unit = {
    val dogs: Array[Dog] = Array(Dog())
    val animals: Array[Animal] = dogs // BREAK!
    animals(0) = Cat() // BREAK!
    println(dogs(0).sound)
  }
}
