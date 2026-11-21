// LEVEL: STD

package main

import "core:encoding/json"
import "core:fmt"

Config :: struct {
	port:  int,
	debug: bool,
}

main :: proc() {
	good: Config
	if err := json.unmarshal(transmute([]u8)string(`{"port": 8080, "debug": true}`), &good); err != nil do panic("good")
	bad: Config
	err := json.unmarshal(transmute([]u8)string(`{port: 8080}`), &bad, .JSON)
	fmt.println(good.port, "invalid" if err != nil else "valid")
}
