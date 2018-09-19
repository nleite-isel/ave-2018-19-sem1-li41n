
#include "Ponto.h"
#include <iostream>


int main()
{
    Ponto p(5, 7);
    p.Print();
    std::cout << "modulo = " << p.GetModule() << std::endl;
    // Added: Print w
//    std::cout << "w = " << p._w <<std::endl; // uncomment in Scenario 2
    std::cout << "x = " << p._x <<std::endl;
    std::cout << "y = " << p._y <<std::endl;

	return 0;
}

