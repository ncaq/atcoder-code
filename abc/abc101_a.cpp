#include <algorithm>
#include <complex>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  string s;
  cin >> s;
  int n = 0;
  for (auto c : s) {
    if (c == '+') {
      ++n;
    }
    if (c == '-') {
      --n;
    }
  }
  cout << n << endl;
  return 0;
}
