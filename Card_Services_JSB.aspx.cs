using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Card_Services_JSB : System.Web.UI.Page
{
    int NewBal;
    int Balance;
    private void getnewbalance()
    {
        string connection = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(connection);
        con.Open();
        string query = "select *from New_Account_User where AccountNumber = '" + TextBox11.Text + "'";
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
        TextBox11.Text = Session["AccountNumber"].ToString();
        if (!IsPostBack)
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("--Select Card Type--");
            DropDownList1.Items.Add("Credit Card");
            DropDownList1.Items.Add("Debit Card");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       getnewbalance();
        int NewBal = Balance - Convert.ToInt32(DropDownList3.Text);
        try
        {
            string constring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            string query = "update  New_Account_User SET Balance ='" + NewBal + "' WHERE AccountNumber ='" + TextBox11.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Hurry Up!! ,Your Card Application Has Been Submited')</script>");
            {

                try
                {
                    string sconstring = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                    SqlConnection conn = new SqlConnection(sconstring);
                    conn.Open();
                    SqlCommand cmdd = new SqlCommand("insert into Currency_Transactions(AccountNumber,Transactions,Date,Amount)VALUES(@AN,@TR,@DT,@AT)", conn);
                    cmdd.Parameters.AddWithValue("@AN", TextBox11.Text);
                    cmdd.Parameters.AddWithValue("@TR", "Card Charges ");
                    cmdd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                    cmdd.Parameters.AddWithValue("@AT", DropDownList3.Text);
                    cmdd.ExecuteNonQuery();
                    {
                        try
                        {
                            string cone =@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
                            SqlConnection connn = new SqlConnection(cone);
                            connn.Open();
                            if (connn.State == System.Data.ConnectionState.Open)
                            {
                                string queryy = "insert into Card_services(Date,VoterIDNumber,Name,AccountNumber,Pincode,CardType,MoblieNum,Classification,Email,Address,Anumber,Amount)VALUES(@DT,'" + TextBox1.Text + "','" + TextBox6.Text + "','" + TextBox11.Text + "','" + TextBox7.Text + "','" + DropDownList1.Text + "','" + TextBox8.Text + "','" + DropDownList2.Text + "','" + TextBox9.Text + "','" + TextBox5.Text + "','" + TextBox10.Text + "','" + DropDownList3.Text + "')";
                                SqlCommand cmddd = new SqlCommand(queryy, connn);
                                cmddd.Parameters.AddWithValue("@DT", DateTime.Now.Date);
                                cmddd.ExecuteNonQuery();
                                Response.Write("<script>alert('Your card Dispatched On Your Address Soon!!')</script>");
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
            Response.Write("<script>alert('Card Application Can't Submited , Please Try Again')</script>");
        }
    }   
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
          DropDownList2.Items.Clear();
          DropDownList3.Items.Clear();
            if (DropDownList1.SelectedItem.ToString() == "Credit Card")
            {
                DropDownList2.Items.Add("-- Card Classification--");
                DropDownList2.Items.Add("Premium credit card");
                DropDownList2.Items.Add("Travel credit cards");
                DropDownList2.Items.Add("Rewards credit card");
                DropDownList2.Items.Add("Business credit cards");
                DropDownList2.Items.Add("Cashback credit cards");
                DropDownList2.Items.Add("Secured credit cards");
                DropDownList2.Items.Add("Fuel credit cards");
                DropDownList2.Items.Add("Student credit cards");
                DropDownList2.Items.Add("Lifestyle credit cards");
                DropDownList2.Items.Add("Contactless credit cards");
                DropDownList2.Items.Add("Entertainment credit cards");
                DropDownList2.Items.Add("Visa Platinum");
                DropDownList2.Items.Add("Gold credit cards");
                DropDownList2.Items.Add("Lifetime free credit cards");
                DropDownList2.Items.Add("Balance transfer credit cards");
                DropDownList2.Items.Add("Jay Smart Bank Freedom Card");
                DropDownList2.Items.Add("Jay smart bank Card ELITE");
                DropDownList2.Items.Add("Jay Smart Bank Card Unnati");
                DropDownList2.Items.Add("Standard Chartered credit Card");
                DropDownList3.Items.Add("4000");

            }
            else if (DropDownList1.SelectedItem.ToString() == "Debit Card")
            {
                DropDownList2.Items.Clear();
                DropDownList3.Items.Clear();
                DropDownList2.Items.Add("-- Card Classification--");
                DropDownList2.Items.Add("RuPay Debit cards");
                DropDownList2.Items.Add("Contactless Debit card");
                DropDownList2.Items.Add("Visa Electron Debit Card");
                DropDownList2.Items.Add("Maestro Debit Card");
                DropDownList2.Items.Add("Platinum DI Debit Card");
                DropDownList2.Items.Add("JSB Classic debit card");
                DropDownList2.Items.Add("JSB Gold debit card");
                DropDownList2.Items.Add("JSB Platinum debit card");
                DropDownList2.Items.Add("JSB Infinite debit card");
                DropDownList2.Items.Add("JSB Signature debit card");
                DropDownList3.Items.Add("500");

            }
        }
    }
