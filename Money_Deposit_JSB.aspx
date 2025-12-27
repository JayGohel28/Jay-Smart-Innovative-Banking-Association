<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Money_Deposit_JSB.aspx.cs" Inherits="Money_Deposit_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Deposit - JSB</title>
      <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" />
      <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 89%;
        }

*{box-sizing:border-box}

* {
  box-sizing: border-box;
}

        .auto-style2 {
            height: 16px;
        }

        .auto-style3 {
            height: 33px;
        }

    </style>
</head>
<body style="background-color: #cccccc">
    <form id="form1" runat="server">
    <div style="background-color:#CCCCCC">
        <table align="center" class="auto-style1">
           <tr>
                <td style="background-color: #0E2F44">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" BackColor="#0E2F44" Font-Size="X-Large" ForeColor="White" Text="Deposit"></asp:Label>
                </td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
             <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Your A/c Number" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    <asp:TextBox ID="TextBox5" Placeholder="Account Number" runat="server" BorderStyle="Solid" Width="270px" Height="41px" Enabled="False"></asp:TextBox>
                </td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc" class="auto-style2"><div style="height: 52px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="JSB%20Photo/Deposit.png" / style="height: 300px; width: 300px"></div></td>
                <td style="background-color: #cccccc" class="auto-style2">
                    </td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Deposit Amount" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    <asp:TextBox ID="TextBox6" Placeholder="Amount Of Deposit" runat="server" BorderStyle="Solid" Width="270px" Height="41px" TextMode="Number"></asp:TextBox>
                </td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    <asp:Button ID="Button2" runat="server" BackColor="#0E2F44" BorderStyle="Solid" Font-Names="Yu Gothic UI" Height="49px" Text="Deposit Amount" Width="389px" Font-Size="Large" ForeColor="#CCCCCC" OnClick="Button1_Click" />
                </td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
                <td style="background-color: #cccccc">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
         <div class="card">
        <div class="card-body">
                <h5 class="card-title">Go to Withdraw</h5>
                <p class="card-text">✦ components are vital to ensure you get the coverage you need and to avoid surprises when making a claim. When considering an insurance policy, compare different options, evaluate the coverage offered, and consider the financial strength and reputation of the insurance company. If you have specific questions about a particular type of insurance or need help deciphering policy terms, feel free to ask!</p>
               
            <p class="card-text">✦ Details what the insurance policy covers. This can include different types of coverage within a single policy.</p>     
             <a href="Money_Withdraw_JSB.aspx" class="btn btn-primary">Go to Instant Money Withdraw</a>
            </div>
        </div>
    </form>
</body>
</html>

