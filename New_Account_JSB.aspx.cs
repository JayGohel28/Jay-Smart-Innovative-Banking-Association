using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class New_Account_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("--SELECT A/C TYPE --");
            DropDownList1.Items.Add("Savings Account");
            DropDownList1.Items.Add("Current Account");
            DropDownList1.Items.Add("Salary Account");
            DropDownList1.Items.Add("NRI Account");
            DropDownList1.Items.Add("Recurring Deposit (RD) Account");
            DropDownList1.Items.Add("Fixed Deposit (FD) Account");
        }
        String constring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(constring);
        con.Open();
        string query = "SELECT AccountNumber FROM New_Account_User";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Label29.Text = dr.GetValue(0).ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string sconstring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(sconstring);
            conn.Open();
            if (conn.State == System.Data.ConnectionState.Open)
            {
                string query = "insert into New_Account_User(Name,MoblieNo,Nominee,NomineeNum,Email,BOD,Nationality,State,HouseNum,StreetNum,City,Pincode,Actype,Balance,Password,Anumber,Pnumber)VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "')";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Your Account Has Been Created')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DropDownList2.Items.Clear();
        if (DropDownList1.SelectedItem.ToString() == "Savings Account")
        {
            DropDownList2.Items.Add("--SELECT A/C Amount -- ");
            DropDownList2.Items.Add("15000");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Current Account")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("30000");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Salary Account")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("0");
        }
        else if (DropDownList1.SelectedItem.ToString() == "NRI Account")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("20000");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Recurring Deposit (RD) Account")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("50000");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Fixed Deposit (FD) Account")
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("25000");
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}