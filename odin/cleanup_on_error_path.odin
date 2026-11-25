package main

import "core:fmt"
import "core:os"
import "core:strconv"

SCRATCH :: "/tmp/bb_scratch/export.csv"

Export_Error :: enum {
	None,
	Create_Failed,
	Invalid_Row,
}

export_rows :: proc(rows: []string) -> Export_Error {
	file, err := os.create(SCRATCH)
	if err != nil {
		return .Create_Failed
	}
	defer os.close(file)
	fmt.fprintln(file, "qty")
	for row in rows {
		qty, ok := strconv.parse_int(row)
		if !ok {
			return .Invalid_Row // BREAK!
			// CONTROL! os.remove(SCRATCH); return .Invalid_Row
		}
		fmt.fprintln(file, qty)
	}
	os.remove(SCRATCH)
	return .None
}

main :: proc() {
	if export_rows({"3", "x", "5"}) != .None {
		fmt.println("export failed")
	}
}
