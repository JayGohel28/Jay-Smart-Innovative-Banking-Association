<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Currency_transfer_JSB.aspx.cs" Inherits="Currency_transfer_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>T-Pay-JSB</title>
     <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 64%;
        }

*,
*::before,
*::after {
  box-sizing: border-box;
}

*,::after,::before{box-sizing:border-box}
        .auto-style2 {
            height: 24px;
        }
    </style>
</head>
<body style="background-color:#CCCCCC">
    <form id="form1" runat="server">
    <div style="background-color:#CCCCCC">
    
        <table align="center" class="auto-style1">
            <tr>
                <td style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #0E2F44">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" BackColor="#0E2F44" Font-Size="X-Large" ForeColor="White" Text="Money Transfar"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC" class="auto-style2"><div style="height: 29px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="JSB%20Photo/trasnfar_money.png" / style="height: 442px; width: 463px"></div></td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Sender Account Number" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox2" Placeholder="Sender A/c Number" runat="server" BorderStyle="Solid" Width="270px" Height="41px" Enabled="False"></asp:TextBox>
                &nbsp; <asp:Button ID="Button3" runat="server" BackColor="#0E2F44" ForeColor="White" Height="40px" Text="✓" Width="68px" class="btn btn-secondary btn-lg" CausesValidation="False" OnClick="Button3_Click"  />
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:Label ID="Label2" runat="server" Text="Amount"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Reciver Account Number" ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox3" Placeholder="Reciver A/c Number" runat="server" BorderStyle="Solid" Width="270px" Height="41px" TextMode="Number"></asp:TextBox>
                &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#0E2F44" ForeColor="White" Height="40px" Text="✓" Width="68px" class="btn btn-secondary btn-lg" CausesValidation="False" OnClick="Button2_Click"  />
&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Amount " ForeColor="Red" Font-Names="Modern No. 20" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox4" Placeholder="Amount" runat="server" BorderStyle="Solid" Width="270px" Height="42px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:Button ID="Button1" runat="server" BackColor="#0E2F44" BorderStyle="Solid" Font-Names="Yu Gothic UI" Height="49px" class="btn btn-secondary btn-lg"  Text="Transfar Amount" Width="389px" Font-Size="Large" ForeColor="#CCCCCC" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
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
         <div class="card">
        <div class="card-body">
                <h5 class="card-title">Go to Deposit</h5>
                <p class="card-text">✦ components are vital to ensure you get the coverage you need and to avoid surprises when making a claim. When considering an insurance policy, compare different options, evaluate the coverage offered, and consider the financial strength and reputation of the insurance company. If you have specific questions about a particular type of insurance or need help deciphering policy terms, feel free to ask!</p>
               
            <p class="card-text">✦ Details what the insurance policy covers. This can include different types of coverage within a single policy.</p>     
             <a href="Money_Deposit_JSB.aspx" class="btn btn-primary">Go to Instant Money Deposit</a>
            </div>
        </div>
    </form>
</body>
</html>
