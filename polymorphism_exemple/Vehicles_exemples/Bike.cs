using System;

public class Bike : Vehicles
{
    public override int nbWheel()
    {
        Console.WriteLine("Un vélo possède 2 roues");
        Console.WriteLine("Avec l'attribut base : " + base.nbWheel());
        return 2;
    }
}
