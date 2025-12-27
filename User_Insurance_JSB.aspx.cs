using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class User_Insurance_JSB : System.Web.UI.Page
{
    int NewBal;
    int Balance;
    private void getnewbalance()
    {
        string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        string query = "select *from New_Account_User where AccountNumber = '" + TextBox13.Text + "'";
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
        TextBox13.Text = Session["AccountNumber"].ToString();
        if (!IsPostBack)
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Health Insurance");
            DropDownList1.Items.Add("Life Insurance");
            DropDownList1.Items.Add("Motor insurance");
            DropDownList1.Items.Add("Home insurance");
            DropDownList1.Items.Add("Commercial insurance");
            DropDownList1.Items.Add("Senior citizen health insurance");
            DropDownList1.Items.Add("Child plans");
            DropDownList1.Items.Add("Education insurance");
            DropDownList1.Items.Add("Business Insurance");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        getnewbalance();
        int NewBal = Balance - Convert.ToInt32(DropDownList5.Text);
        try
        {
            string constring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            string query = "update  New_Account_User SET Balance ='" + NewBal + "' WHERE AccountNumber ='" + TextBox13.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Hurry Up!! ,Your Insurance Policy Application Has Been Submited')</script>");
            {
                 try
                {
                    string sconstring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                    SqlConnection conn = new SqlConnection(sconstring);
                    conn.Open();
                    SqlCommand cmdd = new SqlCommand("insert into Currency_Transactions(AccountNumber,Transactions,Date,Amount)VALUES(@AN,@TR,@DT,@AT)", conn);
                    cmdd.Parameters.AddWithValue("@AN", TextBox13.Text);
                    cmdd.Parameters.AddWithValue("@TR", "Insurance Policy");
                    cmdd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                    cmdd.Parameters.AddWithValue("@AT", DropDownList5.Text);
                    cmdd.ExecuteNonQuery();
                     {
                        try
                        {
                            string cone = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                            SqlConnection connn = new SqlConnection(cone);
                            connn.Open();
                            if (connn.State == System.Data.ConnectionState.Open)
                            {
                                string queryy = "insert into User_Insurance(Date,Name,MoblieNo,[Plan],PaymentPlan,Amount,AccountNumber,Anumber,Validity)VALUES(@DT,'" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList5.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + DropDownList3.Text + "')";
                                SqlCommand cmddd = new SqlCommand(queryy, connn);
                                cmddd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                                cmddd.ExecuteNonQuery();
                                Response.Write("<script>alert('Your Insurance Policy Aprove!!')</script>");
                            }
                        }
                        catch (Exception ex)
                        {

                            Response.Write(ex.Message);
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
            Response.Write("<script>alert('Insurance Policy Application Can't Submited , Please Try Again')</script>");
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList5.Items.Clear();
        if (DropDownList1.SelectedItem.ToString() == "Health Insurance")
        {
            DropDownList5.Items.Add("500");
            DropDownList5.Items.Add("2500");
            DropDownList5.Items.Add("5000");
            DropDownList5.Items.Add("15000");
            DropDownList5.Items.Add("25000");
            DropDownList2.Items.Add("Annual Payment");
            DropDownList2.Items.Add("Automatic Payments");
            
        }
        else if (DropDownList1.SelectedItem.ToString() == "Life Insurance")
        {
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("5000");
            DropDownList2.Items.Add("Annual Payment");
            DropDownList2.Items.Add("Automatic Payments");
           
        }
        else if (DropDownList1.SelectedItem.ToString() == "Motor insurance")
        {
            DropDownList5.Items.Add("900");
            DropDownList5.Items.Add("1500");
            DropDownList2.Items.Add("Annual Payment");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Home insurance")
        {
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("5000");
            DropDownList5.Items.Add("10000");
            DropDownList2.Items.Add("Annual Payment");
            DropDownList2.Items.Add("Monthly Payment");
            DropDownList2.Items.Add("Semi-Annual Payment");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Commercial insurance")
        {
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("5000");
            DropDownList5.Items.Add("50000");
            DropDownList5.Items.Add("100000");
            DropDownList2.Items.Add("Monthly Payment");
            DropDownList2.Items.Add("Annual Payment");
            DropDownList2.Items.Add("Automatic Payments");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Senior citizen health insurance")
        {
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("250");
            DropDownList5.Items.Add("750");
            DropDownList5.Items.Add("1000");
            DropDownList2.Items.Add("Monthly Payment");
            DropDownList2.Items.Add("Annual Payment");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Child plans")
        {
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("1500");
            DropDownList2.Items.Add("Annual Payment");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Education insurance")
        {
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("500");
            DropDownList5.Items.Add("1000");
            DropDownList2.Items.Add("Annual Payment");
        }
        else if (DropDownList1.SelectedItem.ToString() == "Business Insurance")
        {
            DropDownList5.Items.Clear();
            DropDownList5.Items.Add("5000");
            DropDownList5.Items.Add("25000");
            DropDownList5.Items.Add("50000");
            DropDownList5.Items.Add("100000");
            DropDownList2.Items.Add("Monthly Payment");
            DropDownList2.Items.Add("Annual Payment");
            DropDownList2.Items.Add("Automatic Payments");
        }
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

        
    }
}