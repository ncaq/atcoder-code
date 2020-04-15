#include <algorithm>
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
  int equal_count = n;
  for (int l = 0; l < n; ++l) {
    int xor_sum = a[l];
    int plus_sum = a[l];
    for (int r = l + 1; r < n; ++r) {
      xor_sum = xor_sum ^ a[r];
      plus_sum = plus_sum + a[r];
      if (xor_sum == plus_sum) {
        ++equal_count;
      }
    }
  }
  cout << equal_count << endl;
  return 0;
}
