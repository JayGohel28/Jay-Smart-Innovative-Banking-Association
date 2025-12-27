using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Feedback_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox5.Text = Session["AccountNumber"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            try
            {

                SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True");
                conn.Open();
                string insertQuery = "insert into Feedback_User(Name,Email,Topic,Description,AccountNumber)values(@name,@email,@topic,@description,@accountnumber)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@topic", TextBox3.Text);
                cmd.Parameters.AddWithValue("@description", TextBox4.Text);
                cmd.Parameters.AddWithValue("@accountnumber", TextBox5.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Your Feedback Is Successfully Send !!!thank you");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    
}