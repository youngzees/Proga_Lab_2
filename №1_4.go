package main

import (
	"fmt"
	"math"
)

// Проверка на простоту
func isPrime(n int) bool {
	if n < 2 {
		return false
	}
	for i := 2; i <= int(math.Sqrt(float64(n))); i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var N int
	fmt.Scan(&N)

	distance := 0

	for {
		if isPrime(N-distance) || isPrime(N+distance) {
			fmt.Println(distance)
			break
		}
		distance++
	}
}