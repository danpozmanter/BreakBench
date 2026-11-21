package main

import "fmt"

type Animal interface{ Sound() string }
type Dog struct{}
type Cat struct{}

func (Dog) Sound() string { return "woof" }
func (Cat) Sound() string { return "meow" }

func main() {
	dogs := []Dog{{}}
	var animals []Animal = dogs // BREAK!
	animals[0] = Cat{} // BREAK!
	fmt.Println(dogs[0].Sound())
}
