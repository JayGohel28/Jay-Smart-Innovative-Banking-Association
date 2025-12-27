<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_Form_JSB.aspx.cs" Inherits="login_Form_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="icon" href="JSB%20Photo/Main_logo_JSB.png" size="100" />
    <title>User Login Page!</title>
     <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 98%;
        }
        .auto-style3 {
            height: 45px;
        }
        .auto-style4 {
            height: 70px;
        }
      body {
  background-color: #dddddd;
}
       
      
        .auto-style5 {
            height: 26px;
        }
       
      
        .auto-style6 {
            height: 18px;
        }
       
      
        .auto-style7 {
            height: 25px;
        }
       
      
    </style>
</head>
<body style="background-color:#dddddd" >
    <form id="form1" runat="server" >
    <div style="background-color: #dddddd">
        <nav class="navbar navbar-expand-lg" style="background-color: #0E2F44;">
            <div class="container-fluid">
               
                <a class="navbar-brand" href="#" style="color:white">Jay Smart Innovative Banking Association</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> 
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link" href="About_New_Account_JSB.aspx" style="color:white; padding-left:900px"  >Apply New Account</a>
                        <a class="nav-link" href="Admin_Login_Form_JSB.aspx" style="color:white">Admin Login</a>
                        <a class="nav-link" href="About_JSB.aspx" style="color:white">About Jay Smart Bank</a>
                        <a class="nav-link" href="Starting_Form_Info_JSB.aspx" style="color:white">Home</a>
                        
                       
                     
                    </div>
                </div>
            </div>
        </nav>
    
        <table align="center" class="auto-style1">
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd"></td>
            </tr>
            <tr>
                <td style="background-position: center; border-style: groove; border-width: thin; font-size: x-large; font-family: 'Times New Roman', Times, serif; font-weight: lighter; background-color: #0E2F44; background-attachment: fixed; position: relative; font-variant: inherit;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Yu Gothic UI" Text="Account Login" ForeColor="#CCCCCC"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style5"><div style="height: 29px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="JSB%20Photo/user_Login.png" width="369" height="4000"></div></td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Account Number" BorderStyle="Solid" Height="36px" Width="382px" TextMode="Number"></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style6"></td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Account Password" BorderStyle="Solid" Height="35px" Width="380px" TextMode="Password"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter User Password Obligatory" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:CheckBox ID="CheckBox1" runat="server" BorderStyle="Outset" Text="Remeber Me!" Width="192px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style3">
                    <asp:Button ID="Button1" runat="server" class="btn btn-secondary btn-lg" BackColor="#0E2F44" BorderStyle="Solid" Font-Names="Yu Gothic UI" Height="49px" Text="Log-In" Width="389px" Font-Size="Large" ForeColor="#CCCCCC" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style4">&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;One Click To Change Your Account Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" PostBackUrl="~/Forgot_Password_JSB.aspx">Click To Change A/c Password </asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Names="Yu Gothic UI" ForeColor="Red" Text="Disclaimer :-" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:Label ID="Label5" runat="server" Font-Names="Segoe UI Light" Font-Size="Medium" Text="Jay Smart Bank maintains this site (the &quot;Site&quot;) for your personal information, education and communication. Please feel free to browse the Site. You may download material displayed on the Site for noncommercial, personal use only, provided you also retain all copyright and other proprietary notices contained on the materials. You may not, however, distribute, modify, transmit, reuse, report, or use the contents of the Site for public or commercial purposes, including the text, images, audio, and video without JSB 's written permission. Your access and use of the Site is also subject to the following terms and conditions (&quot;Terms and Conditions&quot;) and all applicable laws. By accessing and browsing the Site, you accept, without limitation or qualification, the Terms and Conditions and acknowledge that any other agreement between you and Jay Smart Bank are superseded and of no force or effect."></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style5">
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
