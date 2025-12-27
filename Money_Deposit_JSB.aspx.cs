using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Money_Deposit_JSB : System.Web.UI.Page
{
    int NewBal;
    int Balance;
    private void getnewbalance()
    {
        string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        string query = "select *from New_Account_User where AccountNumber = '" + TextBox5.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Balance = Convert.ToInt32(dr["Balance"].ToString());
            NewBal = Convert.ToInt32(dr["Balance"].ToString());
        }
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox5.Text = Session["AccountNumber"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox6.Text == "" || TextBox5.Text == "")
        {
            Response.Write("<script>alert('Field Has Been Not Support')</script>");
        }
        else
        {
            getnewbalance();
            int NewBal = Balance + Convert.ToInt32(TextBox6.Text);
            try
            {
                string constring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con = new SqlConnection(constring);
                con.Open();
                string query = "update  New_Account_User SET Balance ='" + NewBal + "' WHERE AccountNumber ='" + TextBox5.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Money Has Been Deposit')</script>");
                TextBox5.Text = "";
                TextBox6.Text = "";
                {

                    try
                    {
                        string sconstring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                        SqlConnection conn = new SqlConnection(sconstring);
                        conn.Open();
                        SqlCommand cmdd = new SqlCommand("insert into Currency_Transactions(AccountNumber,Transactions,Date,Amount)VALUES(@AN,@TR,@DT,@AT)", conn);
                        cmdd.Parameters.AddWithValue("@AN", TextBox5.Text);
                        cmdd.Parameters.AddWithValue("@TR", "DEPOSIT");
                        cmdd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                        cmdd.Parameters.AddWithValue("@AT", TextBox6.Text);
                        cmdd.ExecuteNonQuery();
                        TextBox6.Text = "";
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Server Issue , Please Try Again')</script>");
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Money Has Been Not Deposit , Please Try Again')</script>");
                TextBox5.Text = "";
                TextBox6.Text = "";
            }
        }
    }
}