package main

import "core:fmt"

Validation_Error :: struct {
	field: string,
}

Error :: union {
	^Validation_Error,
}

validate :: proc(name: string) -> Error {
	problem: ^Validation_Error
	if name == "" {
		problem = new(Validation_Error)
		problem.field = "name"
	}
	return problem
}

main :: proc() {
	if err := validate("ada"); err != nil {
		fmt.println("invalid")
	} else {
		fmt.println("valid")
	}
}
