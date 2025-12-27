using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Bank_loan_JSB : System.Web.UI.Page
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
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Text = Session["AccountNumber"].ToString();
        if (!IsPostBack)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("--Select Card Pattern--");
            DropDownList2.Items.Add("Secured Loan");
            DropDownList2.Items.Add("Unsecured Loan");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        getnewbalance();
        int NewBal = Balance + Convert.ToInt32(TextBox4.Text);
        try
        {
            string constring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            string query = "update  New_Account_User SET Balance ='" + NewBal + "' WHERE AccountNumber ='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('✓ Your Details Has Been Submited')</script>");
            {

                try
                {
                    string sconstring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                    SqlConnection conn = new SqlConnection(sconstring);
                    conn.Open();
                    SqlCommand cmdd = new SqlCommand("insert into Currency_Transactions(AccountNumber,Transactions,Date,Amount)VALUES(@AN,@TR,@DT,@AT)", conn);
                    cmdd.Parameters.AddWithValue("@AN", TextBox2.Text);
                    cmdd.Parameters.AddWithValue("@TR", "LOAN AMOUNT");
                    cmdd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                    cmdd.Parameters.AddWithValue("@AT", TextBox4.Text);
                    cmdd.ExecuteNonQuery();
                    {
                        try
                        {
                            string cone = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                            SqlConnection connn = new SqlConnection(cone);
                            connn.Open();
                            if (connn.State == System.Data.ConnectionState.Open)
                            {
                                string queryy = "insert into Bank_loan(Date,LoanPattern,AccountNumber,Name,LoanType,LoanAmount,ReturnAmount,Rate,AnyRent,AIncome,Anumber,AccountType,CurrentLoan,Purpose,LoanValidity,MoblieNo)VALUES(@DT,'" + DropDownList2.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + TextBox13.Text + "','" + DropDownList4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList5.Text + "','" + TextBox12.Text + "','" + DropDownList3.Text + "','" + TextBox10.Text + "')";
                                SqlCommand cmddd = new SqlCommand(queryy, connn);
                                cmddd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                                cmddd.ExecuteNonQuery();
                                Response.Write("<script>alert('🎉Loan Amount Has Been Credited In Your Account')</script>");
                            }
                        }
                        catch (Exception)
                        {

                            Response.Write("<script>alert('😞Loan Amount Has Been Credited In Your Account, Check Again Loan Detaisl')</script>");
                        }

                    }
                }
                catch (Exception)
                {
                    Response.Write("<script>alert('Server Issue , Please Try Again')</script>");
                }
            }
            con.Close();
        }
        catch (Exception)
        {
            Response.Write("<script>alert('☓ Your Loan Details Has Been Not Submit')</script>");
        }    
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList1.Items.Clear();
        DropDownList3.Items.Clear();
        DropDownList4.Items.Clear();
        if (DropDownList2.SelectedItem.ToString() == "Secured Loan")
        {
            DropDownList1.Items.Add("--Loan Type-- ");
            DropDownList1.Items.Add("Home Loan");
            DropDownList1.Items.Add("Gold Loan");
            DropDownList1.Items.Add("Loan Against Property");
            DropDownList1.Items.Add("Vehicle Loans");
            DropDownList1.Items.Add("Loan Against Securities");
            DropDownList1.Items.Add("Title Loan");
            DropDownList1.Items.Add("Non-recourse Loan");
            DropDownList1.Items.Add("Loan Against Fixed Deposits");
            DropDownList1.Items.Add("Loan Against Insurance");

            DropDownList3.Items.Add("--Loan Validty--");
            DropDownList3.Items.Add("6 Mounth");
            DropDownList3.Items.Add("1 Year");
            DropDownList3.Items.Add("2 Year");
            DropDownList3.Items.Add("5 Year");
            DropDownList3.Items.Add("10 Year");

            DropDownList4.Items.Add("--Rate--");
            DropDownList4.Items.Add("7%");

        }
        else if (DropDownList2.SelectedItem.ToString() == "Unsecured Loan")
        {
            DropDownList4.Items.Clear();
            DropDownList1.Items.Clear();
            DropDownList3.Items.Clear();
            DropDownList1.Items.Add("--Loan Type-- ");
            DropDownList1.Items.Add("Personal Loan");
            DropDownList1.Items.Add("Short-term Business Loan");
            DropDownList1.Items.Add("Education Loan");

            DropDownList3.Items.Add("--Loan Validty--");
            DropDownList3.Items.Add("1 Year");
            DropDownList3.Items.Add("2 Year");
            DropDownList3.Items.Add("5 Year");
            DropDownList3.Items.Add("10 Year");
            DropDownList3.Items.Add("15 Year");
            DropDownList3.Items.Add("20 Year");

            DropDownList4.Items.Add("--Rate--");
            DropDownList4.Items.Add("9%");
        }
    }
}