// LEVEL: STD

package main

import (
	"crypto/aes"
	"crypto/cipher"
	"crypto/rand"
	"fmt"
)

func main() {
	key := make([]byte, 32)
	rand.Read(key)
	block, err := aes.NewCipher(key)
	if err != nil {
		panic(err)
	}
	gcm, err := cipher.NewGCM(block)
	if err != nil {
		panic(err)
	}
	nonce := make([]byte, gcm.NonceSize())
	rand.Read(nonce)
	sealed := gcm.Seal(nil, nonce, []byte("secret"), nil)
	plain, err := gcm.Open(nil, nonce, sealed, nil)
	if err != nil {
		panic(err)
	}
	fmt.Println(string(plain))
	sealed[0] ^= 1
	if _, err := gcm.Open(nil, nonce, sealed, nil); err != nil {
		fmt.Println("rejected")
	} else {
		fmt.Println("accepted")
	}
}
