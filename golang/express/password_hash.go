// LEVEL: STD

package main

import (
	"crypto/pbkdf2"
	"crypto/rand"
	"crypto/sha256"
	"crypto/subtle"
	"fmt"
)

func derive(password string, salt []byte) []byte {
	key, err := pbkdf2.Key(sha256.New, password, salt, 600000, 32)
	if err != nil {
		panic(err)
	}
	return key
}

func main() {
	salt := make([]byte, 16)
	rand.Read(salt)
	stored := derive("hunter2", salt)
	check := func(password string) bool {
		return subtle.ConstantTimeCompare(derive(password, salt), stored) == 1
	}
	fmt.Println(check("hunter2"), check("wrong"))
}
