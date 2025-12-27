using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;


//"Install-Package BouncyCastle" (use to install line  Go to View > Other Windows > Package Manager Console.) 
public partial class Passbook_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["AccountNumber"].ToString();
        if (!IsPostBack)
        {

            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";// Replace with your connection string
            SqlConnection connection = new SqlConnection(connectionString);

            // Open the connection
            connection.Open();

            // Fetch data from the database
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Currency_Transactions", connection);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);

            // Close the connection
            connection.Close();

            // Bind the data to the DataGridView
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.Visible == true)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=report_grid.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter h_w = new HtmlTextWriter(sw);
            GridView1.RenderControl(h_w);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            GridView1.AllowPaging = true;
            GridView1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('🗙 Click View Mpassbook Button , mPassbook PDF File Can Not Dowloaded , Please Try Again')</script>");
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        string con = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\BCA\BCA 6 Project\Jay Smart Innovative Banking Association\Main Project File\JSB\App_Data\JSB.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(con);
        conn.Open();

        SqlCommand cmd = new SqlCommand();
        string q = "SELECT *FROM Currency_Transactions Where AccountNumber like'%" + TextBox1.Text + "%'";
        cmd.CommandText = q;
        cmd.Connection = conn;

        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}

   