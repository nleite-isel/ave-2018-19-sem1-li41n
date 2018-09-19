#include "pontostaticlib.h"
#include <math.h>
#include <iostream>

Ponto::Ponto(int x, int y)
{
    this->_x = x;
    this->_y = y;
}

double Ponto::GetModule() {
    return ::sqrt((double)_x*_x + _y*_y);
}

void Ponto::Print(){
    std::cout << "( x = " << _x << ", y = " << _y << ")" << std::endl;
}
