package main

import "fmt"

func main() {
    var N, V int
    fmt.Print("Введите N и V: ")
    fmt.Scan(&N, &V)
    
    fuel := V
    stops := 0
    
    fmt.Print("Введите расстояния R: ")
    for i := 0; i < N-1; i++ {
        var R int
        fmt.Scan(&R)
        
        if R > V {
            fmt.Println(0)
            return
        }
        
        if fuel < R {
            stops++
            fuel = V
        }
        
        fuel -= R
    }
    
    fmt.Println(stops)
}