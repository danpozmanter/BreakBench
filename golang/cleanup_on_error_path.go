package main

import (
	"fmt"
	"os"
	"strconv"
)

const scratch = "/tmp/bb_scratch/export.csv"

func export(rows []string) error {
	file, err := os.Create(scratch)
	if err != nil {
		return err
	}
	defer file.Close()
	fmt.Fprintln(file, "qty")
	for _, row := range rows {
		qty, err := strconv.Atoi(row)
		if err != nil {
			return err // BREAK!
			// CONTROL! os.Remove(scratch); return err
		}
		fmt.Fprintln(file, qty)
	}
	return os.Remove(scratch)
}

func main() {
	if err := export([]string{"3", "x", "5"}); err != nil {
		fmt.Println("export failed")
	}
}
