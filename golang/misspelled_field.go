package main

import "fmt"

type Config struct{ Color string }

func main() {
	cfg := Config{Color: "blue"}
	cfg.Colour = "red" // BREAK!
	fmt.Println(cfg.Color)
}
