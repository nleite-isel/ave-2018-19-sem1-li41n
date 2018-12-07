#include <iostream>
#include <string>
#include "commondefs.h"

using namespace std;

//
// Sem typedef
//

// Sintaxe 1
void process1(char* arr, char (*proc)(char)) {
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



int main1() {
	
    // Ponteiro para função
	
	// 1.º) Sem typedef
	
	char (*fp)(char);
	
	// Atribuir valor ao ponteiro
	//fp = &toLower;
	// Ou:
    fp = toLower;
		
	// Obter carácter  'A'
	//char ch = (*fp)('A');
	// Ou:
	char ch = fp('A');
		
	cout << ch << endl;
		
	char arr[] = { 'O', 'L', 'A', ' ', 'M', 'E', 'U', 'S', ' ', 'A', 'M', 'I', 'G', 'O', 'S'};
		
    process1(arr, fp);
    //process1(arr, toLower);
    //process1(arr, &toLower);
    //process1(arr, 0);  // 0 <=> null
	
	
	// Imprimir array de chars
	char* ptr = arr;

	while (*ptr != '\0') {
		cout << *ptr;
		++ptr;
	}

    return 0;
}






