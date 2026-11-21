// LEVEL: STD

package main

import "core:crypto"
import "core:crypto/pbkdf2"
import "core:fmt"

derive :: proc(password: string, salt: []byte) -> [32]byte {
	key: [32]byte
	pbkdf2.derive(.SHA256, transmute([]byte)password, salt, 600000, key[:])
	return key
}

main :: proc() {
	salt: [16]byte
	crypto.rand_bytes(salt[:])
	stored := derive("hunter2", salt[:])
	good := derive("hunter2", salt[:])
	bad := derive("wrong", salt[:])
	fmt.println(crypto.compare_constant_time(stored[:], good[:]) == 1, crypto.compare_constant_time(stored[:], bad[:]) == 1)
}
