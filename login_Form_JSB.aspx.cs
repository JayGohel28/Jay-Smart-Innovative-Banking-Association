using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login_Form_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //this code check the a/c number and password from newacc table
            string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select count(*) from New_Account_User where AccountNumber='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {  
                Session["AccountNumber"]=TextBox1.Text;
                Response.Redirect("~/User_Main_Form_JSB.aspx");
            }
            else
            {
                Response.Write("<script>alert('☓Invalid Organization / Account Number / Password Combination Entered.  Please Correct and Reenter.')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
                  
     
            
    }
}