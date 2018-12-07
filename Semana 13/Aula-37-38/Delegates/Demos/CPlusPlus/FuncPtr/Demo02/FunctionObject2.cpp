
#include <vector>
#include <algorithm>
#include <iostream>

using namespace std;

// Objecto fun��o Adder
struct Adder {
    double sum;
    size_t count;

    Adder() : sum(0), count(0) {
        cout << "\nAdder object created\n";
    }
    void operator()(double n) { sum += n; ++count; }
};


// Refer�ncia para objecto fun��o -- optimiza��o
template <class T>
struct Ref {
    T& obj;
    
    // Constructor
    Ref(T& obj) : obj(obj) {
        cout << "\nRef object created\n";
    }
    // Operator ()
    void operator()(double n) { obj(n); }
};


//
//  Main function
//
int main6() {

    Adder add;

    add(1);
    add(2);
    add(3);

    cout << "The sum of " << add.count << " elements is " << add.sum << endl;  


    ////////////////////////////////
    // (1) Outro exemplo -- for_each
    double arr[] = { 14.3, 12.6, 16.0 };
    vector<double> vec(arr, arr + sizeof(arr) / sizeof(double));

    Adder result = for_each(vec.begin(), vec.end(), Adder());  // � necess�rio guardar o 
                                                               // o retorno dado que o for_each
                                                               // recebe o par�metro por c�pia
    
    cout << "The sum is " << result.sum / result.count << endl;  // 14.3

   
    ////////////////////////////////
    // Optimiza��o -- Para evitar a c�pia em (1)
    
    Adder adder;
    Ref<Adder> ref(adder);

    for_each(vec.begin(), vec.end(), ref);  // N�o � necess�rio guardar o retorno
                                            // do for_each. Porqu�?
    
    cout << "The sum is " << adder.sum / adder.count << endl;  // 14.3

	return 0;
}
