using System;

public class Ponto{
	public int _w, _x, _y;
	//public int _x, _y;
	public Ponto(int x, int y){
		_x = x;
		_y = y;
	}
	public double GetModule() {	 
		return Math.Sqrt(_x*_x + _y*_y);
	}
	public void Print(){
		Console.WriteLine("({0}, {1})", _x, _y);
	}
}
