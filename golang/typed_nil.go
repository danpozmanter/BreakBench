package main

import "fmt"

type ValidationError struct {
	Field string
}

func (e *ValidationError) Error() string {
	return "invalid " + e.Field
}

func validate(name string) error {
	var problem *ValidationError
	if name == "" {
		problem = &ValidationError{Field: "name"}
	}
	return problem
}

func main() {
	if err := validate("ada"); err != nil {
		fmt.Println("invalid")
	} else {
		fmt.Println("valid")
	}
}
