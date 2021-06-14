#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int n;
  string s;
  cin >> n >> s;
  int dup = 0;
  for (int i = 1; i < n - 1; ++i) {
    auto x = s.substr(0, i);
    auto y = s.substr(i);
    sort(x.begin(), x.end());
    x.erase(unique(x.begin(), x.end()), x.end());
    sort(y.begin(), y.end());
    y.erase(unique(y.begin(), y.end()), y.end());
    x += y;
    int all_length = x.length();
    sort(x.begin(), x.end());
    x.erase(unique(x.begin(), x.end()), x.end());
    int length = all_length - x.length();
    dup = dup < length ? length : dup;
  }
  cout << dup << endl;
}
