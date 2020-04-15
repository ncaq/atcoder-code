#include <algorithm>
#include <complex>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

vector<int> memo(1000000, -1);

int recursion(const int n) {
  if (n < 0) {
    return std::numeric_limits<int>::max();
  }
  if (n == 0) {
    return 0;
  }
  if (memo[n] != -1) {
    return memo[n];
  }
  vector<int> count;
  for (auto draw :
       {1, 6, 9, 36, 81, 216, 729, 1296, 6561, 7776, 46656, 59049}) {
    count.push_back(recursion(n - draw));
  }
  memo[n] = *min_element(count.begin(), count.end()) + 1;
  return memo[n];
}

int main() {
  int n;
  cin >> n;
  cout << recursion(n) << endl;
}
