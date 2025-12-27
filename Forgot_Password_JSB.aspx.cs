using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Forgot_Password_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string connection = "Data Source=DESKTOP-K3G0GCR;Initial Catalog=JSB;Integrated Security=True";
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select count(*) from New_Account_User where  Email='" + TextBox1.Text + "'and MoblieNo='" + TextBox2.Text + "'and AccountNumber='" + TextBox3.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("Change_Password_JSB.aspx");
            }
            else
            {
                Response.Write("<script>alert('☓ Information Not Match,')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}