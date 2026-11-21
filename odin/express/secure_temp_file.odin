// LEVEL: STD

package main

import "core:fmt"
import "core:os"
import "core:strings"

main :: proc() {
	f, err := os.create_temp_file("", "bb-*")
	if err != nil do panic("create")
	path := strings.clone(os.name(f))
	os.write_string(f, "ok")
	os.seek(f, 0, .Start)
	buf: [2]u8
	n, _ := os.read(f, buf[:])
	os.close(f)
	os.remove(path)
	fmt.println(string(buf[:n]))
}
