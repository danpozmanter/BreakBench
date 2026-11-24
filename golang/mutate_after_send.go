package main

import "fmt"

func main() {
	lists := make(chan []int)
	goOn := make(chan struct{})
	done := make(chan struct{})
	go func() {
		received := <-lists
		<-goOn
		fmt.Println(received[0])
		close(done)
	}()
	list := []int{1, 2, 3}
	lists <- list // CONTROL! lists <- append([]int(nil), list...)
	list[0] = 99
	close(goOn)
	<-done
}
