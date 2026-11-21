package main

import "fmt"

type Item struct{ Val int }

func main() {
	v := []Item{{Val: 1}}
	r := &v[0]
	for i := 0; i < 1000; i++ {
		v = append(v, Item{Val: i})
	}
	w := []Item{{Val: 7}}
	r.Val = 99
	fmt.Println(w[0].Val)
}
