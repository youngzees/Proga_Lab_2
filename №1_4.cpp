#include <iostream>
#include <cmath>
using namespace std;

bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    int N;
    cin >> N;

    int distance = 0;

    while (true) {
        if (isPrime(N - distance) or isPrime(N + distance)) {
            cout << distance << endl;
            break;
        }
        distance++;
    }

    return 0;
}