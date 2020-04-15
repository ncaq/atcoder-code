#include <algorithm>
#include <complex>
#include <iostream>
#include <map>
#include <string>
#include <vector>

using namespace std;

int n, k, to;

/*

map<vector<int>, int> memo;

int search(const vector<int> &a) {
  for (auto x : a) {
    cerr << x;
  }
  cerr << endl;
  auto m = memo.find(a);
  if (m != memo.end()) {
    return m->second;
  }
  if (count(a.begin(), a.end(), a[0]) == static_cast<int>(a.size())) {
    return 0;
  }
  int result = numeric_limits<int>::max();
  for (int i = 0; i + k <= n;) {
    vector<int> c = a;
    auto first = c.begin() + i;
    auto last = first + k;
    fill(first, last, to);
    if (a != c) {
      result = min(result, search(c) + 1);
    }
    if (i + (k - 1) + k <= n) {
      i += k - 1;
    } else {
      ++i;
    }
  }
  memo.insert(make_pair(a, result));
  return result;
}
*/

int main() {
  cin >> n >> k;
  vector<int> a;
  for (int i = 0; i < n; ++i) {
    int t;
    cin >> t;
    a.push_back(t);
  }
  cout << ((n - 1) + (k - 2)) / (k - 1) << endl;
  return 0;
}
