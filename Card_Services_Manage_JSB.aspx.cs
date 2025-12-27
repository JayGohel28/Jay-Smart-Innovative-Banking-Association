using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Card_Services_Manage_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";// Replace with your connection string
            SqlConnection connection = new SqlConnection(connectionString);

            // Open the connection
            connection.Open();

            // Fetch data from the database
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Card_services ", connection);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            // Close the connection
            connection.Close();

            // Bind the data to the DataGridView
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        string con = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(con);
        conn.Open();

        SqlCommand cmd = new SqlCommand();
        string q = "SELECT *FROM Card_services Where AccountNumber like'%" + TextBox2.Text + "%'";
        cmd.CommandText = q;
        cmd.Connection = conn;

        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}