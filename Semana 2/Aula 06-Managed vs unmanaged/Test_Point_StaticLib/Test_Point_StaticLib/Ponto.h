#ifndef PONTOSTATICLIB_H
#define PONTOSTATICLIB_H


class Ponto
{

public:
    // Scenario 1: Static lib has a new field _w and client only has _x and _y   -> error
    // Scenario 2: Static lib only has _x and _y and client has a new field _w   -> error
    // Rule of thumb: *always* use same header in order to binary compatibility

//    int _w, _x, _y; // Scenario 2
    int _x, _y; // Scenario 1
    Ponto(int x, int y);
    double GetModule();
    void Print();
};

#endif // PONTOSTATICLIB_H
