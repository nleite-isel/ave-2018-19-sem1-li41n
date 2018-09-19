#ifndef PONTOSTATICLIB_H
#define PONTOSTATICLIB_H


class Ponto
{

public:
    // Add field _w a posteriori
//    int _w, _x, _y; // use in Scenario 1
    int _x, _y;   // use in Scenario 2
    Ponto(int x, int y);
    double GetModule();
    void Print();
};

#endif // PONTOSTATICLIB_H
