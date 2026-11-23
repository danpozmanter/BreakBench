package main

import (
	"errors"
	"fmt"
)

type Report struct{}

func (r *Report) Write(text string) error { return errors.New("disk full") }

func (r *Report) Close() error { return errors.New("close failed") }

func save() error {
	report := &Report{}
	defer report.Close()
	return report.Write("totals")
}

func main() {
	if err := save(); err != nil {
		fmt.Println(err)
	}
}
