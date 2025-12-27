<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Starting_Form_Info_JSB.aspx.cs" Inherits="Starting_Form_Info_JSB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome JSB!!</title>
     <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/css/bootstrap.css" rel="stylesheet" />
     <script src="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 2114px;
        }
        .auto-style3 {
            width: 2114px;
            height: 67px;
        }
    </style>
</head>
<body style="background-color:#dddddd">
    <form id="form1" runat="server">
     <div id="carouselExampleAutoplaying" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="JSB%20Photo/Start_Page_1.png" class="d-block w-100" />
                </div>
                <div class="carousel-item">
                    <img src="JSB%20Photo/Start_Page_2.png" class="d-block w-100" />
                </div>
                 <div class="carousel-item">
                     <img src="JSB%20Photo/Card_Markting.png" class="d-block w-100" />
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    <div>
    <nav class="navbar navbar-expand-lg" style="background-color: #0E2F44;">
            <div class="container-fluid">
               
                <a class="navbar-brand" href="#" style="color:white">Jay Smart Innovative Banking Association</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> 
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link" href="About_New_Account_JSB.aspx" style="color:white; padding-left:1140px"  >Apply New Account</a>
                        <a class="nav-link" href="login_Form_JSB.aspx" style="color:white">User Login</a>
                        <a class="nav-link" href="Admin_Login_Form_JSB.aspx" style="color:white">Admin Login</a>

                      
                    
                    </div>
                </div>
            </div>
        </nav>
      </div>
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <marquee><b>Empowering your financial journey, one connection at a time Jay Smart Innovative Banking </b> , "Banking is not just about credit and deposit, it's about facilitating dreams and building futures."<b>- Jay Gohel </b></marquee>
            </tr>
           
   </table>
        <div class="card">
        <div class="card-body">
                <h5 class="card-title">Insurances Policy</h5>
                <p class="card-text">✦ components are vital to ensure you get the coverage you need and to avoid surprises when making a claim. When considering an insurance policy, compare different options, evaluate the coverage offered, and consider the financial strength and reputation of the insurance company. If you have specific questions about a particular type of insurance or need help deciphering policy terms, feel free to ask!</p>
               
            <p class="card-text">✦ Details what the insurance policy covers. This can include different types of coverage within a single policy.</p>     
             <a href="login_Form_JSB.aspx" class="btn btn-primary">Apply Insurance Policy</a>
            </div>
        </div>
        <br>
        <br>
        <div class="card">
           <div class="card-body">
                <h5 class="card-title">Loan</h5>
                <p class="card-text">✦ Loans come with an interest rate, which is the cost of borrowing money. This rate can be fixed (stays the same throughout the loan term) or variable (can change based on market conditions).</p>
                 <p class="card-text">✦ Before finalizing the account, carefully read and understand the terms and conditions, including fees, minimum balance requirements, interest rates, and any other account-specific details.</p>
               <a href="login_Form_JSB.aspx" class="btn btn-primary">Click To Apply Loan</a>
            </div>
        </div>
        <br>
        <br>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Apply New Account In Jay Smart Innovative Banking</h5>
                <p class="card-text">✦ Select the type of account that fits your needs, whether it's a checking account for everyday transactions, a savings account to save money, a money market account for higher interest rates, or a specialized account (like a student account or a business account).</p>
                <p class="card-text">✦When applying, you'll need personal information such as your name, address, Social Security number, date of birth, and a valid form of identification (driver's license, passport, etc.). </p>
                <p class="card-text">✦If you're opening a joint account, you'll need the same information for the other account holder.
                    You can apply for a bank account online through the bank's website, in person at a branch, or sometimes over the phone. The application will typically ask for your personal details and the type of account you wish to open.</p>
                <a href="About_New_Account_JSB.aspx" class="btn btn-primary">Apply New Account In Just Moument!!</a>

              
            </div>
        </div>
     </form>
</body>
</html>
