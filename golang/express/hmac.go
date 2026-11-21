// LEVEL: STD

package main

import (
	"crypto/hmac"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
)

func main() {
	mac := hmac.New(sha256.New, []byte("key"))
	mac.Write([]byte("The quick brown fox jumps over the lazy dog"))
	fmt.Println(hex.EncodeToString(mac.Sum(nil)))
}
