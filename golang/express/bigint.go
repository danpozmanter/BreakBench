// LEVEL: STD

package main

import (
	"fmt"
	"math/big"
)

func main() {
	fmt.Println(new(big.Int).Lsh(big.NewInt(1), 100))
}
