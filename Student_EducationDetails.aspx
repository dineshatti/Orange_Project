<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_EducationDetails.aspx.cs" Inherits="Orange_Project.Student_EducationDetails" %>

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
    <title>Student Education Details</title>

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
            height: 69px;
        }
    </style>
</head>
<body>
    <div runat="server" class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Add Education Details</h2>
                </div>
                <div class="card-body">
                    <form method="POST" runat="server">
                        <div class="form-row m-b-55">
                            <div class="name">
                                College Name
                            </div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_collegename" placeholder="e.g Indian Institute of Technology" class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Enroll No</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_enrollno" placeholder="e.g 70025" class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Semester</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:DropDownList ID="DropDown_semester" class="input--style-5" runat="server" Height="48px" Width="245px">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>1st Sem</asp:ListItem>
                                        <asp:ListItem>2nd Sem</asp:ListItem>
                                        <asp:ListItem>3rd Sem</asp:ListItem>
                                        <asp:ListItem>4th Sem</asp:ListItem>
                                        <asp:ListItem>5th Sem</asp:ListItem>
                                        <asp:ListItem>6th Sem</asp:ListItem>
                                        <asp:ListItem>7th Sem</asp:ListItem>
                                        <asp:ListItem>8th Sem</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>
                        </div>

                        <div class="form-row m-b-55">
                            <div class="name">Degree</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:DropDownList ID="DropDown_degree" class="input--style-5" runat="server" Height="43px" Width="244px">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>BE/BTech</asp:ListItem>
                                        <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>Arts & Science</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>
                        </div>

                        

                        <div class="form-row m-b-55">
                            <div class="name">Branch</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:DropDownList ID="DropDown_branch" class="input--style-5" runat="server" Height="40px">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>COMPUTER</asp:ListItem>
                                        <asp:ListItem>ELECTRICAL</asp:ListItem>
                                        <asp:ListItem>ELECTRONICS</asp:ListItem>
                                        <asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
                                        <asp:ListItem>CIVIL</asp:ListItem>
                                        <asp:ListItem>AERONAUTICAL</asp:ListItem>
                                        <asp:ListItem>ACCOUNTS</asp:ListItem>
                                        <asp:ListItem>COMMERCE</asp:ListItem>
                                        <asp:ListItem>PHYSICS</asp:ListItem>
                                        <asp:ListItem>CHEMISTRY</asp:ListItem>
                                        <asp:ListItem>BUISNESS ADMINISTRATION</asp:ListItem>

                                    </asp:DropDownList>

                                </div>
                            </div>
                        </div>

                        <div class="form-row m-b-55">
                            <div class="name">Passing Year</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:DropDownList ID="DropDown_passingyear" class="input--style-5" runat="server" Height="24px" Width="243px">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>2005</asp:ListItem>
                                        <asp:ListItem>2006</asp:ListItem>
                                        <asp:ListItem>2007</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                        <asp:ListItem>2009</asp:ListItem>
                                        <asp:ListItem>2010</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2019</asp:ListItem>
                                        <asp:ListItem>2020</asp:ListItem>
                                        <asp:ListItem>2021</asp:ListItem>
                                        <asp:ListItem>2022</asp:ListItem>
                                        
                                    </asp:DropDownList>

                                </div>
                            </div>
                        </div>



                        <div class="form-row">
                            <div class="name">CGPA</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="Txt_cgpa" placeholder="e.g 9.9" class="input--style-5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-row m-b-55">
                            <div class="name">Skill</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:DropDownList SelectionMode="Multiple" ID="DropDown_skill" class="input--style-5" runat="server" Height="40px">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>C Programming</asp:ListItem>
                                        <asp:ListItem>C++</asp:ListItem>
                                        <asp:ListItem>JAVA</asp:ListItem>
                                        <asp:ListItem>PYTHON</asp:ListItem>
                                        <asp:ListItem>.NET</asp:ListItem>
                                        <asp:ListItem>RUBY ON RAILS</asp:ListItem>
                                        <asp:ListItem>C#</asp:ListItem>
                                        <asp:ListItem>JAVASCRIPT</asp:ListItem>
                                        <asp:ListItem>ANGULAR JAVASCRIPT</asp:ListItem>
                                        <asp:ListItem>NODE JAVASCRIPT</asp:ListItem>
                                        <asp:ListItem>PHP</asp:ListItem>
                                        <asp:ListItem>LINUX</asp:ListItem>
                                        <asp:ListItem>R PROGRAMMING</asp:ListItem>
                                        <asp:ListItem>TALLY</asp:ListItem>
                                        <asp:ListItem>CONTRUCTION WORK</asp:ListItem>
                                        <asp:ListItem>3D DESIGN</asp:ListItem>
                                        <asp:ListItem>CIRCUIT DESIGN</asp:ListItem>
                                       
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="name">Resume<br /></div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="auto-style1">
                            <asp:Button ID="Btn_submit" class="btn btn--radius-2 btn--red" runat="server" Text="SUBMIT" Height="52px" Width="272px" Onclick="Button1_Click"/>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                            
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
