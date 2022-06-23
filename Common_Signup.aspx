<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Common_Signup.aspx.cs" Inherits="Orange_Project.Common_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>SignUp</title>

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
</head>
<body>
     <div runat="server" class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">New User Registration</h2>
                </div>
                <div class="card-body">
                    <form method="POST" runat="server">
                        <div class="form-row">
                            <div class="name">Full Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox autofocus="" ID="Txt_name" placeholder="e.g Syed Haroon" class="input--style-5" runat="server" required="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_username" placeholder="e.g syed_haroon" class="input--style-5" runat="server" required="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_password" class="input--style-5" runat="server" TextMode="Password" required="True"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txt_password" ErrorMessage="*Password with atleast(uppercase,lowercase,number,special) 6-characters" ValidationExpression="(?=^.{6,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Retype Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_repassword" class="input--style-5" runat="server" TextMode="Password" required="True"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txt_password" ControlToValidate="Txt_repassword" ErrorMessage="*Passwords does not match, Enter the matching Password!" ForeColor="Red"></asp:CompareValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_email" placeholder="e.g xyc@abc.com" class="input--style-5" runat="server" required="True"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Invalid E-mail ID" ControlToValidate="Txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-3">
                                        <div class="input-group-desc">
                                            <asp:TextBox disabled="" ID="Txt_areacode" value="+91" class="input--style-5" runat="server" required="True" MaxLength="6"></asp:TextBox>
                                            <label class="label--desc">Area Code</label>
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <asp:TextBox ID="Txt_number" placeholder="98XXXXXXXX" class="input--style-5" runat="server" required="True" MaxLength="10"></asp:TextBox>
                                            <label class="label--desc">Phone Number</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">Are You A ?</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Student
                                    <asp:RadioButton ID="Radio_student" runat="server" GroupName ="Role" Checked="True" />
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Company
                                    <asp:RadioButton ID="Radio_company" runat="server" GroupName ="Role"/>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div>
                            <asp:Button class="btn btn--radius-2 btn--red" ID="Btn_Submit" runat="server" Text="Save & Proceed" Width="247px" OnClick="btn_submit"/>
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
