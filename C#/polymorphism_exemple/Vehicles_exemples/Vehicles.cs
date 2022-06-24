using System;

public abstract class Vehicles
{
    virtual public int nbWheel()
    {
        Console.WriteLine("Un véhicule possède des roues");
        return 0;
    }
}
