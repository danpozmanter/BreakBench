package main

import "fmt"

type Account struct{ Balance int }

func main() {
	accounts := []Account{{Balance: 100}}
	for _, acct := range accounts {
		acct.Balance += 50
	}
	fmt.Println(accounts[0].Balance)
}
