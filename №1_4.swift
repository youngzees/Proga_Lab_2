import Foundation

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 { return false }
    }
    return true
}

let N = Int(readLine()!)!
var distance = 0

while true {
    if isPrime(N - distance) || isPrime(N + distance) {
        print(distance)
        break
    }
    distance += 1
}