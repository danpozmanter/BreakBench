package main

import "fmt"

type Config struct {
	Timeout int
	Retries int
}

func main() {
	c := Config{Timeout: 30} // CONTROL! c := Config{Timeout: 30, Retries: 3}
	fmt.Println(c.Retries)
}
