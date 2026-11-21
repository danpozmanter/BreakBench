package main

import "fmt"

func describe(s string) string {
	switch s {
	case "circle":
		return "circle"
	default:
		return "other"
	}
}

func bad(s string) string { switch s { case "circle": return "circle"; case "circle": return "again"; default: return "other" } } // BREAK!

func main() { fmt.Println(describe("square")) }
