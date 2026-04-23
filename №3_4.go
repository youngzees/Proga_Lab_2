package main

import "fmt"

func main() {
	var n int
	fmt.Print("Введите N: ")
	fmt.Scan(&n)

	fmt.Print("Введите числа: ")
	for i := 0; i < n; i++ {
		var num string
		fmt.Scan(&num)

		rev := ""
		for j := len(num) - 1; j >= 0; j-- {
			rev += string(num[j])
		}

		if num == rev {
			fmt.Print("Yes ")
		} else {
			fmt.Print("No ")
		}
	}
	fmt.Println()
}
