using System;


public class Point
{
    public int x, y;
    public Point(int x, int y)
    {
        this.x = x;
        this.y = y;
    }
    public double GetModule()
    {
        return Math.Sqrt(x*x + y*y);
    }
    public void Print()
    {
        Console.WriteLine("({0}, {1})", x, y);
    }
}

