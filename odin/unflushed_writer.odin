package main

import "core:bufio"
import "core:os"

main :: proc() {
	file, err := os.create("/tmp/bb_report.txt")
	if err != nil {
		os.exit(1)
	}
	report: bufio.Writer
	bufio.writer_init(&report, os.to_stream(file))
	bufio.writer_write_string(&report, "total=42\n")
	// CONTROL! bufio.writer_flush(&report)
}
