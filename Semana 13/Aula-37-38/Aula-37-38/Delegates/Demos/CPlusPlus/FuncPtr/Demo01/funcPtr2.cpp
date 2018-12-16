
#include <iostream>
#include <iomanip>
#include <string>
#include "commondefs.h"

using namespace std;


// Sintaxe 2
void process2(char* arr, char proc(char)) {
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

int main2() {
    // Ponteiro para função
	
	// 1.º) Sem typedef
	
	char (*fp)(char);
	
	// Atribuir valor ao ponteiro
	fp = &toLower;
	// Ou:
	//fp = toLower;
		
	
	
	
	// Obter carácter  'A'
	char ch = (*fp)('A');
	// Ou:
	// char ch = fp('A');
		
	cout << ch << endl;
	
	
	char arr[] = { 'O', 'L', 'A', ' ', 'M', 'E', 'U', 'S', ' ', 'A', 'M', 'I', 'G', 'O', 'S'};
		
    process2(arr, fp);
    //process2(arr, toLower);
    //process2(arr, &toLower);
    //process2(arr, 0);  // 0 <=> null
	
	
	// Imprimir array de chars
	char* ptr = arr;

	while (*ptr != '\0') {
		cout << *ptr;
		++ptr;
	}

    return 0;
}






