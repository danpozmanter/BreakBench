import os
import time

fn main() {
	y := os.args[1].int()
	m := os.args[2].int()
	d := os.args[3].int()
	// CONTROL! if d > time.days_in_month(m, y) or { 0 } {
		// CONTROL! println('invalid')
		// CONTROL! return
	// CONTROL! }
	date := time.new(time.Time{
		year:  y
		month: m
		day:   d
	})
	println(date.ymmdd())
}
