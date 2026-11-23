package main

import "core:fmt"
import "core:os"
import "core:strings"

main :: proc() {
	_ = os.make_directory("/tmp/bb_files")
	_ = os.write_entire_file("/tmp/bb_files/report.txt", transmute([]u8)string("secret\n"))

	name := "report.txt\x00.png"
	if !strings.has_suffix(name, ".png") {
		fmt.println("rejected")
		return
	}
	path := strings.concatenate({"/tmp/bb_files/", name})
	data, err := os.read_entire_file(path, context.allocator)
	if err != nil {
		fmt.println("rejected")
		return
	}
	fmt.print(string(data))
}
