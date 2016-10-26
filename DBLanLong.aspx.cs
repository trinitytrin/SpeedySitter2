/*********************** Connects to Database and saves the lat long value there in address table *************************/
//Written by Tanzila

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Adapters;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls.Expressions;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Windows;

public partial class DBLanLong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string connectionString = @"Data Source=localhost; Database=speedy_sitter; User ID=Trina; Password=123";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                cn.Open();
                Response.Write("MySQL connection successful!");
                Response.Write("Hi! got lat lon? " + NewAddress.Lat + " and " + NewAddress.Lon);
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM address"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = cn;
                        sda.SelectCommand = cmd;

                        DataTable dt = new DataTable();

                        sda.Fill(dt);
                        //GridView.DataSource = dt;
                        //GridView.DataBind(dt);


                        // GridView.DisabledCssClass

                    }
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Exception caught in Service page connection to database: " + ex);

        }

    }
}