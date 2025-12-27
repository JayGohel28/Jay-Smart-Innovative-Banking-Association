<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot_Password_JSB.aspx.cs" Inherits="Forgot_Password_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password-JSB</title> <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body aling="Center">
    <form id="form1" runat="server">
    <div style="background-color: #dddddd" aling="Center">
    
        <table align="center" class="auto-style1">
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
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #0E2F44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Yu Gothic UI" Font-Size="X-Large" ForeColor="White" Text="Forgot Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:TextBox ID="TextBox1" Placeholder="E-mail" runat="server" BorderStyle="Solid" Width="270px" Height="41px" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Moblie Number" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:TextBox ID="TextBox2" Placeholder="Moblie Number"  runat="server" BorderStyle="Solid" Width="270px" Height="41px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Account Number" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:TextBox ID="TextBox3" Placeholder="Account Number" runat="server" BorderStyle="Solid" Width="270px" Height="41px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">
                    <asp:Button ID="Button1" runat="server" BackColor="#0E2F44" BorderStyle="Solid" class="btn btn-secondary btn-lg"  ForeColor="White" Height="53px" Text="Change Password" Width="306px" Font-Bold="True" Font-Names="Yu Gothic UI" OnClick="Button1_Click" />
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
                <td style="background-color: #dddddd">&nbsp;</td>
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
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label28" runat="server" Font-Overline="True" Font-Size="Small" Font-Strikeout="False" Font-Underline="True" Text="© 2024 Jay Smart Banking. All rights reserved | Devloper by Jay A. Gohel"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
