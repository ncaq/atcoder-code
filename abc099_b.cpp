#include <algorithm>
#include <complex>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int a, b;
  cin >> a >> b;
  for (int i = 1; i < 499500; ++i) {
    int ay = (sqrt(8 * (a + i) + 1) - 1) / 2;
    if ((a + i) + (ay + 1) == (b + i)) {
      cout << i << endl;
      return 0;
    }
  }
}
