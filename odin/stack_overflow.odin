package main

import "core:fmt"
import "core:os"
import "core:strconv"

walk :: proc(n: i64) -> i64 {
	if n == 0 do return 0
	return (walk(n - 1) * 31 + n) % 1_000_000_007
}

main :: proc() {
	n, _ := strconv.parse_i64(os.args[1])
	fmt.println(walk(n)) // CONTROL! acc: i64 = 0; for i in 1 ..= n do acc = (acc * 31 + i) % 1_000_000_007; fmt.println(acc)
}
