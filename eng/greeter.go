package main

import "fmt"

type greeting string

func (g greeting) Greet() {
	fmt.Println("Hello Universe XX")
}

// exported
var Greeter greeting
