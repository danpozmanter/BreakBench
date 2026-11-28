package main

import "os"

func main() {
	if err := os.WriteFile("/tmp/bb_report.txt", []byte("total=42\n"), 0o644); err != nil {
		panic(err)
	}
}
