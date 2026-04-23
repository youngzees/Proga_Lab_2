#include <iostream>
using namespace std;

int main() {
    int N, V;
    cout << "Введите N и V: ";
    cin >> N >> V;
    
    int fuel = V;
    int stops = 0;
    
    cout << "Введите расстояния R: ";
    for (int i = 0; i < N - 1; i++) {
        int R;
        cin >> R;
        
        if (R > V) {
            cout << 0 << endl;
            return 0;
        }
        
        if (fuel < R) {
            stops++;
            fuel = V;
        }
        
        fuel -= R;
    }
    
    cout << stops << endl;
    return 0;
}