#include <algorithm>
#include <complex>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  int a, b;
  cin >> a >> b;
  if (a <= 8 && b <= 8) {
    cout << "Yay!" << endl;
  } else {
    cout << ":(" << endl;
  }
  return 0;
}
