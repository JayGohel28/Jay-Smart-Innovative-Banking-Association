using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login_Form_JSB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            if (DropDownList1.Text == "Owner" && TextBox2.Text == "Jay" && TextBox3.Text == "281128")
            {
                Response.Redirect("Admin_Main_Form_JSB.aspx");
            }
            else if (DropDownList1.Text == "JSB Manager" && TextBox2.Text == "Joy" && TextBox3.Text == "281128")
            {
                Response.Redirect("Admin_Main_Form_JSB.aspx");
            }
            else if (DropDownList1.Text == "JSB Employes" && TextBox2.Text == "Jay" && TextBox3.Text == "282828")
            {
                Response.Redirect("Admin_Main_Form_JSB.aspx");
            }
        }
       
    }
