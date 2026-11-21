// LEVEL: STD

package main

import "core:fmt"
import "core:math/big"

main :: proc() {
	x: big.Int
	defer big.destroy(&x)
	big.set(&x, 1)
	big.shl(&x, &x, 100)
	s, _ := big.int_itoa_string(&x)
	fmt.println(s)
}
