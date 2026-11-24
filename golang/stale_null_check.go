package main

import "fmt"

type User struct{ Name string }

type Session struct{ User *User }

func logout(s *Session) { s.User = nil }

func main() {
	session := &Session{User: &User{Name: "alice"}}
	if session.User != nil {
		logout(session) // CONTROL! fmt.Println(len(session.User.Name))
		fmt.Println(len(session.User.Name)) // CONTROL! logout(session)
	}
}
