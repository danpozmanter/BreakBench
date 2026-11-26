package main

import (
	"fmt"
	"os"
	"strconv"
	"time"
)

func main() {
	y, _ := strconv.Atoi(os.Args[1])
	m, _ := strconv.Atoi(os.Args[2])
	d, _ := strconv.Atoi(os.Args[3])
	date := time.Date(y, time.Month(m), d, 0, 0, 0, 0, time.UTC)
	fmt.Println(date.Format("2006-01-02")) // CONTROL! if date.Day() != d { fmt.Println("invalid") } else { fmt.Println(date.Format("2006-01-02")) }
}
