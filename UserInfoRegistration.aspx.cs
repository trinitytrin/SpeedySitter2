﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

//Registration Module
//Author: Ashvija


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DAMONNAHARIS\TRINA;Initial Catalog=TestDB1;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBoxFname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBoxFname.Text;
        Session["Username"] = username.ToString();
       
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {
            string q = "insert into Persons( LastName, FirstName, Sex, DOB, VisaStatus,Type,Phone, Email)values('" + TextBoxLname.Text.ToString() + "','" + TextBoxFname.Text.ToString() + "','" + DropDownListsex.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + DropDownListVisa.Text.ToString() + "','" + DropDownListUsertype.Text.ToString() + "', '" + TextBoxPhone.Text.ToString() + "','" + TextBox1.Text.ToString() + "')";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("UserNameRegistration.aspx");
            Response.Write("Submitted Successfully");
            con.Close();
         
            
        }

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }


}