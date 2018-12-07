#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

class Counter {

	int c, sum;

public:
	Counter() :  c(0), sum(0) {}
	void operator()(int value) {
		++c;
		sum += value;
	}

	int getC() {
		return c;
	}
	int getSum() {
		return sum;
	}
};


Counter process(int arr[], int len, Counter c) {

	for (int i = 0; i < len; ++i)
		c(arr[i]);
		//c.operator()(arr[i]); // pode ser invocado explicitamente

	return c;
}


int main() {

    int arr[] = {1, 2, 3, 4, 5, 6};
	
    Counter c = process(arr, 6, Counter());
	
	
	cout << "Count " << c.getC() << " values" << endl;
	cout << "Sum " << c.getSum() << " values" << endl;

	return 0;
}








