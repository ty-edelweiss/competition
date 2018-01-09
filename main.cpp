#include <iostream>
#include <algorithm>
#include <string>
using namespace std;

int N;

string solve(int* a) {
    if ( ((a[0]*a[0]) + (a[1]*a[1])) == (a[2]*a[2]) ) {
        return "YES";
    }
    return "NO";
}

int main() {
    cin >> N;

    int a[3] = {0};
    while (cin >> a[0]) {
        cin >> a[1];
        cin >> a[2];
        sort(a, a+3);
        string res = solve(a);
        cout << res << endl;
    }

    return 0;
}
