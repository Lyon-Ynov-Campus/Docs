using System;
using System.Collections.Generic;

public class exemple
{
    List<Vehicles> vehicule;
    public void read()
    {
        vehicule = new List<Vehicles>();
        vehicule.Add(new Avion());
        // vehicule.Add(new Vehicles());
        //vehicule.Add(new Car());
        //vehicule.Add(new Bike());

        Avion avion1 = (Avion)vehicule[0];
        avion1.toto();


    }
}
