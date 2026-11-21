package main

import "fmt"

type Config struct{ Port int }

func main() {
	c := Config{Port: 8080}
	c.Port = 1
	fmt.Println(c.Port)
}
