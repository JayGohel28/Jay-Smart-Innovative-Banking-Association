<%@ Page Language="C#" AutoEventWireup="true" CodeFile="New_Account_JSB.aspx.cs" Inherits="New_Account_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>New Account Form-JSB</title>
     <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" />
     <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" />
      <script src="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 104px;
        }

        .auto-style3 {
            height: 52px;
        }

        .auto-style4 {
            height: 26px;
        }

    </style>
</head>
<body style="background-color: #dddddd">
    <form id="form1" runat="server">
    <div>
    <nav class="navbar navbar-expand-lg" style="background-color: #0E2F44;">
            <div class="container-fluid">
                
                <a class="navbar-brand" href="#" style="color:white">Jay Smart Innovative Banking Association</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> 
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link" href="#" style="color:white; padding-left:1100px"  >Back To Login</a>
                        <a class="nav-link" href="#" style="color:white">About Jay Smart Bank</a>
                    </div>
                </div>
            </div>
        </nav>
        <table  class="auto-style1" style="background-color: #dddddd">
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr aria-live="off">
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #0E2F44">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Yu Gothic UI Light" Font-Size="X-Large" ForeColor="White" Text="Personal Info"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">
                    <asp:TextBox ID="TextBox1"   Placeholder="Enter Full Name" runat="server"  BorderStyle="Solid" Width="270px" Height="41px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2"  Placeholder="Enter Moblie No" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required TextMode="Phone"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" Placeholder="Enter Nominee Name" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Email Not Valid , Please Try Again" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:TextBox ID="TextBox4" Placeholder="Enter Moblie Number" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required TextMode="Phone"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox5" Placeholder="Enter E-Mail" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required TextMode="Email"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" Placeholder="Enter Date Of Birth" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:TextBox ID="TextBox7" Placeholder="Fax" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" Placeholder="Enter Nationality" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" Placeholder="Select State " runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox10" Placeholder="Enter House / building Name Or Number " runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox11" Placeholder="Street / Near Road / No" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox12" Placeholder="Enter Your City" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:TextBox ID="TextBox13" Placeholder="Enter Your City Pin-Code" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #0E2F44">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Yu Gothic UI Light" Font-Size="X-Large" ForeColor="White" Text="Bank Info"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="270px" required OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>--SELECT A/C TYPE --</asp:ListItem>
                        <asp:ListItem Value="Saving Account">Saving</asp:ListItem>
                        <asp:ListItem>Salary Account</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="41px" Width="270px" required OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox16" Placeholder="Set Account Password" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox17" Placeholder="Enter Confirm Password" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required TextMode="Password"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox18" Placeholder="Enter Aadhar Number" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox19" Placeholder="Enter Pan Number" runat="server" BorderStyle="Solid" Width="270px"  Height="41px" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox16" ControlToValidate="TextBox17" ErrorMessage="Password Dose't Match , Try Again" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:Button ID="Button1" runat="server" BackColor="#0E2F44" BorderStyle="Solid" class="btn btn-secondary btn-lg" ForeColor="White" Height="56px" Text="Now Apply For a New Account!! " Width="447px" Font-Names="Yu Gothic Light" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style4">
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Castellar" Font-Overline="False" Font-Size="Large" Text="✦ Your Account Number :-"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label29" runat="server" Font-Italic="True" Font-Names="Albert" Font-Size="Large" Text="Label"></asp:Label>
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
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Yu Gothic UI" Font-Size="Small" Text="After the completion of verification, you need to make some initial deposition in your new savings account; the initial amount can vary depending on the minimum amount required to maintain in the savings account. After this process, you will become the account holder. In the case of a zero balance Savings Account, there is no need to deposit any amount."></asp:Label>
                </td>
            </tr>
            <tr>
                <td >&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Yu Gothic UI" Font-Size="Small" Text="A savings account is a basic account in a bank where you can deposit your extra income while gaining interest on the same depending on the saving account interest rate. The interest earned gets credited automatically to your account every year on quarterly basis."></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label28" runat="server" Font-Overline="True" Font-Size="Small" Font-Strikeout="False" Font-Underline="True" Text="© 2024 Jay Smart Banking. All rights reserved | Devloper by Jay A. Gohel"></asp:Label>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

