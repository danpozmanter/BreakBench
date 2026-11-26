package main

import "core:fmt"
import "core:os"
import "core:strconv"
import "core:time/datetime"

main :: proc() {
	y, _ := strconv.parse_i64(os.args[1])
	m, _ := strconv.parse_i64(os.args[2])
	d, _ := strconv.parse_i64(os.args[3])
	date, _ := datetime.components_to_date(y, m, d) // CONTROL! date, err := datetime.components_to_date(y, m, d)
	fmt.printf("%04d-%02d-%02d\n", date.year, date.month, date.day) // CONTROL! if err != nil { fmt.println("invalid") } else { fmt.printf("%04d-%02d-%02d\n", date.year, date.month, date.day) }
}
