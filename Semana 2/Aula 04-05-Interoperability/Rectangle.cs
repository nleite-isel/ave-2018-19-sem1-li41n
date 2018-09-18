
// Child class
public class Rectangle : Shape
{
	override public float Area() 
	{
		return base.length * base.breadth;
	}
}


// csc /addmodule:Shape.netmodule /t:library Rectangle.cs
