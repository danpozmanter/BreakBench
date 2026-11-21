// LEVEL: STD

package main

import "core:fmt"
import "core:time"
import "core:time/datetime"
import "core:time/timezone"

main :: proc() {
	tz, ok := timezone.region_load("Europe/Paris")
	if !ok {
		fmt.println("no zone")
		return
	}
	dt, _ := datetime.components_to_datetime(2026, 3, 29, 1, 30, 0)
	local := timezone.datetime_to_tz(dt, tz)
	fmt.printf("%04d-%02d-%02d %02d:%02d\n", local.year, local.month, local.day, local.hour, local.minute)
	_ = time.Duration(0)
}
