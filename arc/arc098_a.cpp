#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int n;
  string s;
  cin >> n >> s;
  long mover = count(s.begin(), s.end(), 'E');
  long min_mover = mover;
  for (int i = 0; i < n; ++i) {
    if (s[i] == 'W') {
      ++mover;
    } else if (s[i] == 'E') {
      --mover;
    }
    min_mover = min(min_mover, mover);
  }
  cout << min_mover << endl;
}
