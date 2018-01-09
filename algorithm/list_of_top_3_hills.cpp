#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

#define MAX_N 10000

int main() {
    vector<int> v;

    int num;
    while (cin >> num) {
        v.push_back(num);
    }

    sort(v.begin(), v.end());

    int n = 3;
    for (int i = v.size() - 1 ; i >  v.size() - (n + 1) ; i--) {
        cout << v[i] << endl;
    }
    return 0;
}
