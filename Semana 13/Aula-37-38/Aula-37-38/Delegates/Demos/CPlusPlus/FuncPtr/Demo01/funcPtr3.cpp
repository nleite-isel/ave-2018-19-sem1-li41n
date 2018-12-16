
#include <iostream>
#include <iomanip>
#include <string>
#include "commondefs.h"

using namespace std;

typedef int MyInt;

// Usando typedef
typedef char (*FP)(char);


void process3(char* arr, FP proc) {
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



int main3() {

	MyInt i = 0;

    // Ponteiro para função
		
	// Usando typedef
	
	FP fp;
	fp = toLower;
	//fp = &toLower;
	
	
	// Obter carácter  'A'
	//char ch = (*fp)('A');
	// Ou:
	char ch = fp('A');
		
	cout << ch << endl;
	
	
	char arr[] = { 'O', 'L', 'A', ' ', 'M', 'E', 'U', 'S', ' ', 'A', 'M', 'I', 'G', 'O', 'S'};
		
    process3(arr, fp);
    //process3(arr, toLower);
    //process3(arr, &toLower);
    //process3(arr, 0);  // 0 <=> null
	
	
	// Imprimir array de chars
	char* ptr = arr;

	while (*ptr != '\0') {
		cout << *ptr;
		++ptr;
	}

    return 0;
}
