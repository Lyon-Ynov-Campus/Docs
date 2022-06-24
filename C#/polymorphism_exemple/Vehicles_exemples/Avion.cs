using System;

public class Avion : Vehicles
{
    public int nbWheel()
    {
        Console.WriteLine("Un avion possède 2 roue");
        return 2;
    }

    public void toto()
    {
        Console.WriteLine("toto");
    }
}
