#include <algorithm>
#include <complex>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main() {
  string n;
  cin >> n;
  int sum = 0;
  for (size_t i = 0; i < n.length(); ++i) {
    sum += atoi(n.substr(i, 1).c_str());
  }
  if (atoi(n.c_str()) % sum == 0) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
