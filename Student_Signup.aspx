<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="Orange_Project.Student_Signup" %>

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
    <title>Students - SignUp</title>

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
                    <h2 class="title">Student Registration Form</h2>
                </div>

                <div class="card-body">
                    <form method="POST" runat="server">

                        <div class="form-row p-t-20">
                            <label class="label label--block">Gender</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Male
                                    <asp:RadioButton ID="Radio_male" runat="server" GroupName ="Gender" Checked="True" />
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Female
                                    <asp:RadioButton ID="Radio_female" runat="server" GroupName ="Gender"/>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">Date of Birth</div>
                            <div class="value">
                                <div class="auto-style3">
                                    <asp:TextBox ID="Txt_birthdate"  class="input--style-5" runat="server" TextMode="Date" Height="25px" Width="305px"></asp:TextBox>
                                </div>
                                    
                            </div>
                        </div>

                        

                        

                        <div class="form-row">
                            <div class="name">Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_address" type="Multiline" class="input--style-5" runat="server" TextMode="MultiLine" Height="53px" Width="489px"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        

                        <div class="form-row">
                            <div class="name">City</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_city"  type="Multiline" placeholder="e.g Coimbatore" class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="name">State</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_state" placeholder="e.g Tamilnadu" class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Pincode</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_pincode" placeholder="e.g 6XXXXX" class="input--style-5" runat="server" TextMode="Number" MaxLength="6"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        

                        <div class="auto-style1">
                            
                            <asp:Button ID="Btn_continue" class="btn btn--radius-2 btn--red" runat="server" Text="Continue" Height="48px" Width="267px" OnClick="Btn_continue_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
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
