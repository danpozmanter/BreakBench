package main

import (
	"fmt"
	"iter"
	"os"
)

const lock = "/tmp/bb_scratch/reader.lock"

func rows() iter.Seq[string] {
	return func(yield func(string) bool) {
		os.WriteFile(lock, nil, 0o644)
		defer os.Remove(lock)
		for _, line := range []string{"alpha", "beta", "gamma"} {
			if !yield(line) {
				return
			}
		}
	}
}

func main() {
	for line := range rows() {
		fmt.Println(line)
		break
	}
}
