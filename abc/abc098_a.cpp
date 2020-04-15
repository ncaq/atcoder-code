#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int a, b;
  cin >> a >> b;
  auto l = {a + b, a - b, a * b};
  cout << *max_element(l.begin(), l.end()) << endl;
  return 0;
}
