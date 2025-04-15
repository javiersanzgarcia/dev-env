package main

import (
	"fmt"

	data "frontendmasters.com/go/io/data"
)

// Package variables
var url = "https://frontendmasters.com"

func main() {
	// function scoped variables
	const maxspeed byte = 60
	message := "Hello from Go"
	var price float32 = 34.4 // The standar is float64, beacuse normally you work with JSONS
	var unsignedInteger uint = 10

	print(message, price, unsignedInteger, )

	fmt.Println("The url is", url)

	printData()

	fmt.Println("The max speed is", data.MaxSpeed)
}
