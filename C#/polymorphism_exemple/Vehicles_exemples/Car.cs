using System;

public class Car : Vehicles
{
    public override int nbWheel()
    {
        Console.WriteLine("Une voiture possède 4 roues");
        return 4;
    }
}
