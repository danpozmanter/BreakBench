package main

import "core:fmt"

Error :: enum {
	None,
	Disk_Full,
}

write_report :: proc() -> Error {
	return .Disk_Full
}

close_log :: proc() {}

save_report :: proc() -> Error {
	defer close_log()
	return write_report()
}

main :: proc() {
	fmt.println("saved" if save_report() == .None else "failed")
}
