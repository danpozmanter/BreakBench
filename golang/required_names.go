package main

import "fmt"

type Offset struct{ DX, DY int }

func move(o Offset) { fmt.Println(o.DX, o.DY) }

func main() { move(Offset{4, 3}) }
