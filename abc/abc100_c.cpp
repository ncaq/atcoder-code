#include <algorithm>
#include <complex>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int n;
  cin >> n;
  vector<int> a;
  for (int i = 0; i < n; ++i) {
    int t;
    cin >> t;
    a.push_back(t);
  }
  int count = 0;
  for (auto x : a) {
    while (x % 2 == 0) {
      x /= 2;
      ++count;
    }
  }
  cout << count << endl;
  return 0;
}
