package main

import "core:os"

main :: proc() {
	if err := os.write_entire_file("/tmp/bb_report.txt", transmute([]byte)string("total=42\n")); err != nil {
		os.exit(1)
	}
}
