<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Main_Form_JSB.aspx.cs" Inherits="Admin_Main_Form_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Form-JSB</title>
     <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" />
</head>
<body style="background-color: #dddddd">
    <form id="form1" runat="server">
    <div style="background-image: url('JSB%20Photo/Admin_Main_Panel_BG.jpg'); height: 100vh">>
        <nav class="navbar navbar-expand-lg" style="background-color: #0E2F44;">

            <div class="container-fluid" >
                <a class="navbar-brand" href="#" style="color:white">Jay Smart Innovative Banking Association</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> 
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link" href="New_Account_Manage.aspx" style="color:white; padding-left:700px"  >Account Manage</a>
                        <a class="nav-link" href="" style="color:white">Policy Manage</a>
                        <a class="nav-link" href="Transfar_Manage_JSB.aspx" style="color:white">Transfar Manage</a>
                        <a class="nav-link" href="Loan_Manage_JSB.aspx" style="color:white">Loan Manage</a>
                        <a class="nav-link" href="Feedback_Manage_JSB.aspx" style="color:white">User Feedback</a>
                        <a class="nav-link" href="Card_Services_Manage_JSB.aspx" style="color:white">Card Manage</a>
                         <a class="nav-link" href="Admin_Login_Form_JSB.aspx" style="color:white">log-Out</a>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    </form>
</body>
</html>
