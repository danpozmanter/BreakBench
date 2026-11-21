// LEVEL: STD

package main

import "core:crypto"
import "core:crypto/aead"
import "core:fmt"

main :: proc() {
	key: [32]byte
	iv: [12]byte
	crypto.rand_bytes(key[:])
	crypto.rand_bytes(iv[:])
	message := "secret"
	sealed: [6]byte
	tag: [16]byte
	aead.seal(.AES_GCM_256, sealed[:], tag[:], key[:], iv[:], nil, transmute([]byte)message)
	plain: [6]byte
	if !aead.open(.AES_GCM_256, plain[:], key[:], iv[:], nil, sealed[:], tag[:]) do panic("open")
	fmt.println(string(plain[:]))
	sealed[0] ~= 1
	fmt.println("accepted" if aead.open(.AES_GCM_256, plain[:], key[:], iv[:], nil, sealed[:], tag[:]) else "rejected")
}
