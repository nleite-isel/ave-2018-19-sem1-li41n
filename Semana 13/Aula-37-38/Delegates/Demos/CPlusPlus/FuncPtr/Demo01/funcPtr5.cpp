
#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

//
// Invocar metodo de instancia de uma classe
//


class XObj {
public:
    // Metodo de instancia
    char toLower(char ch);
};

char XObj::toLower(char ch) {
	if (isalpha(ch) != 0)
		return ch + ' ';
	return ch;
}


void process5(char* arr, char (XObj::*proc)(char), XObj obj) {
    if (proc == NULL) {
		cout << "Function doesn't exist" << endl;
		return;
	}

	char* ptr = arr;

	while (*ptr != '\0') {
        *ptr = (obj.*proc)(*ptr);
		++ptr;
	}
}



int main5() {
    //char (*fp)(char); // Ponteiro para funcao... ERRO, Nao e possivel em C++
    char (XObj::*fp)(char); // Ponteiro para funcao... de X
    fp = &XObj::toLower;

    // Criar instancia de X
    XObj obj;
	
    char ch = (obj.*fp)('A');

	cout << ch << endl;
		
    char arr[] = { 'O', 'L', 'A', ' ', 'M', 'E', 'U', 'S', ' ', 'A', 'M', 'I', 'G', 'O', 'S'};

    process5(arr, fp, obj);
//    process5(arr, 0, obj);
		
	// Imprimir array de chars
	char* ptr = arr;

	while (*ptr != '\0') {
		cout << *ptr;
		++ptr;
	}

    return 0;
}






