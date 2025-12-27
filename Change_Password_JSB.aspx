<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_Password_JSB.aspx.cs" Inherits="Change_Password_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password-JSB</title>
    <style type="text/css">
        .auto-style1 {
            width: 54%;
            border: 1px solid #DDDDDD;
        }
        .auto-style2 {
            width: 631px;
        }
        .auto-style3 {
            width: 631px;
            height: 19px;
        }
    </style>
</head>
<body style="background-color: #dddddd">
    <form id="form1" runat="server">
    <div style="background-color: #dddddd">
    
        <table align="center" class="auto-style1">
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #0E2F44" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Yu Gothic UI" Font-Size="X-Large" ForeColor="White" Text="Add New Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><div style="width: 961px; height: 26px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="JSB%20Photo/Change_Password.png" / height="300" width="300"></div></td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Password" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">
                    <asp:TextBox ID="TextBox1" Placeholder="Add New Password" runat="server" BorderStyle="Solid" Width="270px" Height="41px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Confirm Password" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">
                    <asp:TextBox ID="TextBox2" Placeholder="Add Cofirm Password" runat="server" BorderStyle="Solid" Width="270px" Height="41px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style3"></td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style3">
                    <asp:TextBox ID="TextBox3" Placeholder="Account Number" runat="server" BorderStyle="Solid" Width="270px" Height="41px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#0E2F44" BorderStyle="Solid" ForeColor="White" Height="42px" Text="Add New Password " Width="306px" Font-Bold="True" Font-Names="Yu Gothic UI" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Password &amp; Confirm Password Dose Not Mach" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #dddddd" class="auto-style2">&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
