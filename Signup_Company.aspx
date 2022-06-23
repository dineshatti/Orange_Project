<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup_Company.aspx.cs" Inherits="Orange_Project.Signup_Company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Company - SignUp</title>

    <!-- Title Icon-->
    <link rel = "icon" href =  "Stud_Dash_Items/images/logo_icon.ico" type = "image/x-icon">


    <!-- Icons font CSS-->
    <link href="Registration_Items/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Registration_Items/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Registration_Items/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Registration_Items/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Registration_Items/css/main.css" rel="stylesheet" media="all">
    <style type="Registration_Items/text/css">
        .auto-style1 {
            width: 718px;
            height: 65px;
            margin-top: 0;
        }
        .auto-style3 {
            position: relative;
            margin: 0;
            left: -1px;
            top: -1px;
            width: 361px;
            height: 26px;
        }
        .auto-style4 {
            position: relative;
            margin: 0;
            left: 0px;
            top: -1px;
            width: 361px;
            height: 34px;
        }
    </style>
</head>
<body>
    <div runat="server" class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Company Registration</h2>
                </div>
                <div class="card-body">
                    <form method="POST" runat="server">
                        <div class="form-row">
                            <div class="name">Company Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox autofocus="" ID="Txt_companyname" class="input--style-5" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">City</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_city"  class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Website</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_website" class="input--style-5" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Txt_website" ErrorMessage="*Invalid website address" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Pincode</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_pincode" class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">State</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_state"  class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_address" class="input--style-5" runat="server" TextMode="MultiLine" Width="476px"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div>
                            <asp:Button ID="btn_reg" class="btn btn--radius-2 btn--red" runat="server" Text="Register" onclick="btn_register" Width="201px"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="Registration_Items/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Registration_Items/vendor/select2/select2.min.js"></script>
    <script src="Registration_Items/vendor/datepicker/moment.min.js"></script>
    <script src="Registration_Items/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Registration_Items/js/global.js"></script>

</body>
</html>
