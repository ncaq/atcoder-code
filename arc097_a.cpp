#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  string s;
  int k;
  cin >> s;
  cin >> k;
  vector<string> substrs;
  for (size_t size = 1; size <= s.size(); ++size) {
    for (size_t from = 0; from <= s.size() - size; ++from) {
      substrs.push_back(s.substr(from, size));
    }
  }
  sort(substrs.begin(), substrs.end());
  auto u = unique(substrs.begin(), substrs.end());
  substrs.erase(u, substrs.end());
  cout << substrs.at(k - 1) << endl;
  return 0;
}
