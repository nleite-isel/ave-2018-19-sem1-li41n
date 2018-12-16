
#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

class X {
public:
	static char toLower(char ch);
};

char X::toLower(char ch) {
	if (isalpha(ch) != 0)
		return ch + ' ';
	return ch;
}


// Usando typedef

typedef char (*FP)(char);


void process4(char* arr, FP proc) {
    if (proc == NULL) {
		cout << "Function doesn't exist" << endl;
		return;
	}

	char* ptr = arr;

	while (*ptr != '\0') {
		*ptr = proc(*ptr);
		++ptr;
	}
}



int main4() {
	FP fp;
	fp = X::toLower;
	// Ou:
	//fp = &X::toLower;
	
	
	//char ch = (*fp)('A');
	// Ou:
	char ch = fp('A');
		
	cout << ch << endl;
		
	char arr[] = { 'O', 'L', 'A', ' ', 'M', 'E', 'U', 'S', ' ', 'A', 'M', 'I', 'G', 'O', 'S'};
		
    process4(arr, fp);
//    process4(arr, 0);
	// Ou:
    //process4(arr, X::toLower);
	
		
	// Imprimir array de chars
	char* ptr = arr;

	while (*ptr != '\0') {
		cout << *ptr;
		++ptr;
	}

    return 0;
}






