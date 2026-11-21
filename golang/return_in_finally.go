package main

import (
	"errors"
	"fmt"
)

func writeReport() error {
	return errors.New("disk full")
}

func closeLog() {}

func saveReport() error {
	defer closeLog()
	return writeReport()
}

func main() {
	if err := saveReport(); err != nil {
		fmt.Println("failed")
	} else {
		fmt.Println("saved")
	}
}
