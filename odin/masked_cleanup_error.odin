package main

import "core:fmt"

Report_Error :: enum {
	None,
	Disk_Full,
	Close_Failed,
}

report_write :: proc(text: string) -> Report_Error {
	return .Disk_Full
}

report_close :: proc() -> Report_Error {
	return .Close_Failed
}

save :: proc() -> Report_Error {
	defer report_close()
	return report_write("totals")
}

main :: proc() {
	switch save() {
	case .Disk_Full:
		fmt.println("disk full")
	case .Close_Failed:
		fmt.println("close failed")
	case .None:
		fmt.println("saved")
	}
}
