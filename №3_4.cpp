#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;
    
    for (int i = 0; i < n; i++) {
        string num;
        cin >> num;
        
        string rev = string(num.rbegin(), num.rend());
        cout << (num == rev ? "Yes " : "No ");
    }
    
    return 0;
}