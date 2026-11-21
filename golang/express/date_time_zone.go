// LEVEL: STD

package main

import (
	"fmt"
	"time"
)

func main() {
	loc, _ := time.LoadLocation("Europe/Paris")
	t := time.Date(2026, 3, 29, 1, 30, 0, 0, time.UTC)
	fmt.Println(t.In(loc).Format("2006-01-02 15:04"))
}
