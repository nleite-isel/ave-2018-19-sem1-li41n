
Public MustInherit Class Shape
    Dim l, b As Single
    Public MustOverride Function Area() As Single
    Public Overridable Function Perimeter() As Single
        Return 2 * (l + b)
    End Function
	
	REM Public Overridable Function PERIMETER() As Single
        REM Return 2 * (l + b)
    REM End Function

    Property length() As Single
        Get
            Return l
        End Get
        Set(ByVal Value As Single)
            l = Value
        End Set
    End Property

    Property breadth() As Single
        Get
            Return b
        End Get
        Set(ByVal Value As Single)
            b = Value
        End Set
    End Property
End Class

'  vbc /t:module Shape.vb