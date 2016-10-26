using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeocodeAddress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("Hi! got lat lon?");

        NewAddress ad = new NewAddress();
        NewAddress.Lat = 3.3;
        NewAddress.Lon = 4.4;
        Console.WriteLine(NewAddress.Lat);
        Console.WriteLine(NewAddress.Lon);

        if (IsPost)
        {
            double latloc = Request["lati"];
            double lonloc = Request["loni"];
            Response.Write("Hi! got lat lon? " + latloc + " and " + lonloc);
        }
        else
        {
            Response.Write("Post method error ");
        }

    }
}