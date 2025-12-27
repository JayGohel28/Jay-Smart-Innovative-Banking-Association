using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Change_Password_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string Passowrd = TextBox2.Text;
            if (TextBox1.Text == Passowrd)
            {
                string connection = "Data Source=DESKTOP-K3G0GCR;Initial Catalog=JSB;Integrated Security=True";
                SqlConnection con = new SqlConnection(connection);
                con.Open();

                string q = "update New_Account_User set Password = '" + Passowrd + "' where AccountNumber='" + TextBox3.Text + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Password Change Successfully')</script>");
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}