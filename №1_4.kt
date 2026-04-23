import kotlin.math.sqrt

fun isPrime(n: Int): Boolean {
    if (n < 2) return false
    for (i in 2..sqrt(n.toDouble()).toInt()) {
        if (n % i == 0) return false
    }
    return true
}

fun main() {
    val N = readLine()!!.toInt()
    var distance = 0

    while (true) {
        if (isPrime(N - distance) || isPrime(N + distance)) {
            println(distance)
            break
        }
        distance++
    }
}