<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="Orange_Project.Forgot_Password" %>

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
    <title>Forgot Password</title>

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
    <style type="text/css">
        .auto-style1 {
            margin-left:30%;
            width: 300px;
            height: 60px;
        }
        .auto-style2 {
            position: relative;
            margin: 0;
            left: 0px;
            top: 0px;
            width: 717px;
            height: 32px;
        }
    </style>
</head>
<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Forgot Password</h2>
                </div>
                <div class="card-body">
                    <form method="POST" runat="server">
                        <div class="form-row" >
                            <div class="name">User Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_username" class="input--style-5" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="Txt_username" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Email ID</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="FP_Txt_emailid" class="input--style-5" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="FP_Txt_emailid" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Phone Number</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="FP_Txt_mobileno" class="input--style-5" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="FP_Txt_mobileno" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">Are You a ?</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Student
                                    <asp:RadioButton ID="FP_Radio_student" runat="server" GroupName ="Gender" Checked="True" />
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Company
                                    <asp:RadioButton ID="FP_Radio_company" runat="server" GroupName ="Gender"/>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>

                        

                        <div class="auto-style1">
                            <asp:Button ID="FP_Btn_submit" class="btn btn--radius-2 btn--red" runat="server" OnClick="Forgot" Text="SUBMIT" />
                            
                        </div>

                        <div class="form-row">
                            <div class="name"></div>
                            <div class="value">
                                <div class="auto-style2">
                                </div>
                                    <asp:Label ID="FP_Lbl_password" Text="" runat="server" ForeColor="Green" Font-Bold="True" Font-Size="30px"></asp:Label>
                            </div>
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
