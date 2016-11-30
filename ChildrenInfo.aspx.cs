using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChildrenInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=SUBBU\NAMED_INSTANCE;Initial Catalog=SpeedySitter;Integrated Security=True");
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {
            string r = "insert into Children( LastName, FirstName, Sex, DOB, SpecialNeeds)values('" + TextBox2.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + DropDownList1.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "')";
            SqlCommand cmd = new SqlCommand(r, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
   
}