
#using "Rectangle.dll"

using namespace System;


void main()
{
	Rectangle ^rect = gcnew Rectangle();
	rect->length = 4;
    rect->breadth = 5;
	Console::WriteLine(rect->Area());
	Console::WriteLine(rect->Perimeter());
}

// cl /clr:safe Main.cpp