#include <iostream>
#include <string>
#include <vector>
#include <queue>
#include <cmath>
#pragma warning(disable:4996)

using namespace std;

int main() {
	ios_base::sync_with_stdio(false);
	cin.tie(NULL);
	int a, b,count=0,sum;
	cin >> a >> b;
	sum = a * b;
	a--;
	while (1) {
		sum -= b;
		if (sum != 0) {
			count++;
			b--;
		}
		else break;
		sum -= a;
		if (sum != 0) {
			count++;
			a--;
		}
		else break;
	}
	cout << count;
}