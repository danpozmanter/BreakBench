// LEVEL: LANGUAGE

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

func bad(s string) string { switch s { case "circle": return "circle"; case "circle": return "again"; default: return "other" } } // REJECT!

func main() { fmt.Println(describe("square")) }
