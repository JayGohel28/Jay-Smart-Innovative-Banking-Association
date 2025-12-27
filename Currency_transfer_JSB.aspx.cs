using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Currency_transfer_JSB : System.Web.UI.Page
{
    int NewBal;
    int Balance;
    private void getnewbalance()
    {
        string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        string query = "select *from New_Account_User where AccountNumber = '" + TextBox2.Text + "'";
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
    private void checkfrombal() // Check bal no label on sender side
    {
        string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        string query = "select *from New_Account_User where AccountNumber= '" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Label2.Text = dr["Balance"].ToString();
            Balance = Convert.ToInt32(dr["Balance"].ToString());
        }

    }
    private void transfar()
    {
        try
        {
            string sconstring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(sconstring);
            conn.Open();
            if (conn.State == System.Data.ConnectionState.Open)
            {
                SqlCommand cmdd = new SqlCommand("insert into Currency_Transfer(Date,ToAccountNumber,FromAccountNumber,Amount)VALUES(@DT,@FA,@TA,@AT)", conn);
                cmdd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                cmdd.Parameters.AddWithValue("@FA", TextBox2.Text);
                cmdd.Parameters.AddWithValue("@TA", TextBox3.Text);
                cmdd.Parameters.AddWithValue("@AT", TextBox4.Text);
                Response.Write("<script>alert('☑ Amount Trasfar Successfully')</script>");
                cmdd.ExecuteNonQuery();
                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    private void forto()
    {
        getnewbalance();
        int NewBal = Balance + Convert.ToInt32(TextBox4.Text);
        try
        {
            string constring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            string query = "update  New_Account_User SET Balance ='" + NewBal + "' WHERE AccountNumber ='" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    private void forfrom()
    {
        getnewbalance();
        int NewBal = Balance - Convert.ToInt32(TextBox4.Text);
        try
        {
            string constring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            string query = "update  New_Account_User SET Balance ='" + NewBal + "' WHERE AccountNumber ='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Text = Session["AccountNumber"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      {
            transfar();
            forfrom();
            forto();
            try
            {
                string sconstring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                SqlConnection conn = new SqlConnection(sconstring);
                conn.Open();
                SqlCommand cmdd = new SqlCommand("insert into Currency_Transactions(AccountNumber,Transactions,Date,Amount)VALUES(@AN,@TR,@DT,@AT)", conn);
                cmdd.Parameters.AddWithValue("@AN", TextBox2.Text);
                cmdd.Parameters.AddWithValue("@TR", "T-PAY ");
                cmdd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                cmdd.Parameters.AddWithValue("@AT", TextBox4.Text);
                cmdd.ExecuteNonQuery();
            }

            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }
    }
    
    protected void Label2_DataBinding(object sender, EventArgs e)
    {

    }
    protected void Label2_Load(object sender, EventArgs e)
    {
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select count(*) from New_Account_User  where AccountNumber='" + TextBox2.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows[0][0].ToString() == "1")
        {
            checkfrombal();
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('✕ Amount Not Exist')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True"; 
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select count(*) from New_Account_User where AccountNumber='" + TextBox3.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows[0][0].ToString() == "1")
        {
            Response.Write("<script>alert('Account Has Founde')</script>");
            if (TextBox2.Text == TextBox3.Text)
            {
                Response.Write("<script>alert('Source And Distination Account Are Same')</script>");
            }
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('Account Number Not Match , Please Re-Enter')</script>");
           
        }
    }
}