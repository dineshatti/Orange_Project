<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stud_Profile.aspx.cs" Inherits="Orange_Project.Stud_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>

	<!-- Title Icon-->
    <link rel = "icon" href =  "Stud_Dash_Items/images/logo_icon.ico" type = "image/x-icon"> 


	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="TableForms/css/util.css">
	<link rel="stylesheet" type="text/css" href="TableForms/css/main.css">
<!--===============================================================================================-->

	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="Stud_Dash_Items/css/animate.css">
	
	<link rel="stylesheet" href="Stud_Dash_Items/css/owl.carousel.min.css">
	<link rel="stylesheet" href="Stud_Dash_Items/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="Stud_Dash_Items/css/magnific-popup.css">

	<link rel="stylesheet" href="Stud_Dash_Items/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="Stud_Dash_Items/css/jquery.timepicker.css">
	
	<link rel="stylesheet" href="Stud_Dash_Items/css/flaticon.css">
	<link rel="stylesheet" href="Stud_Dash_Items/css/style.css">
	<style type="text/css">
        .auto-style1 {
            width: 920px;
            border-radius: 10px;
            overflow: hidden;
            height: 846px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 62px;
            padding-bottom: 90px;
            background: #fff;
        }
        .auto-style2 {
            height: 730px;
        }
    </style>
</head>
<body>
    <div class="py-3" runat="server">
		<div class="container">
			<div class="row d-flex align-items-start align-items-center px-3 px-md-0">
				<div class="col-md-4 d-flex mb-2 mb-md-0">
					<a class="navbar-brand d-flex align-items-center" href="Student_Dashboard.aspx"><img src="Stud_Dash_Items/images/Logo_Pic.ico"></img></a>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container d-flex align-items-center">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div id="ftco-nav">
				<ul class="navbar-nav m-auto">
					<li class="nav-item"><a href="Student_Dashboard.aspx" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="Applied_Job.aspx" class="nav-link">Applied Jobs</a></li>
					<li class="nav-item"><a href="Stud_Inbox.aspx" class="nav-link">Inbox</a></li>
					<li class="nav-item active"><a href="Stud_Profile.aspx" class="nav-link">Profile</a></li>
					<li class="nav-item"><a href="Login_Page.aspx" class="nav-link">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	
	<section class="hero-wrap js-fullheight">
		<div class="container-contact100" style="background-image: url('TableForms/images/bckgrnd_img1.jpg');background-size:100%;">
		<div class="wrap-contact100">
			<form runat="server" class="contact100-form validate-form">
				

                <asp:Label ID="Prof_Head" class="contact100-form-title" runat="server" Text="PROFILE"></asp:Label>
				
				<center>
                <asp:DetailsView ID="StudentView" runat="server" Height="133px" Width="815px" CssClass="m-t-0" AlternatingRowStyle-BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderWidth="5px" BorderColor="Black"></asp:DetailsView>
				</center>

				<asp:Panel ID="EditTable" runat="server" class="container-contact100-form-btn">
					<div class="wrap-input100 validate-input bg1" data-validate="Please Type Address">
						<span class="label-input100">Address</span>
						<asp:TextBox ID="Txt_address" class="input100" runat="server" TextMode="SingleLine"></asp:TextBox>
					</div>

					<div class="wrap-input100 validate-input bg1" data-validate="Please Type City">
						<span class="label-input100">City</span>
						<asp:TextBox ID="Txt_city" class="input100" runat="server" ></asp:TextBox>
					</div>
					
					<div class="wrap-input100 validate-input bg1" data-validate="Please Type State">
						<span class="label-input100">State</span>
						<asp:TextBox ID="Txt_state" class="input100" runat="server" ></asp:TextBox>
					</div>

					<div class="wrap-input100 validate-input bg1" data-validate="Please Type Pincode">
						<span class="label-input100">Pincode</span>
						<asp:TextBox ID="Txt_pincode" class="input100" runat="server" ></asp:TextBox>
					</div>

					<div class="wrap-input100 validate-input bg1" data-validate="Please Type Email Number">
						<span class="label-input100">Email</span>
						<asp:TextBox ID="Txt_email" class="input100" runat="server" ></asp:TextBox>
						<asp:RegularExpressionValidator ID="REemail" ForeColor="red" ControlToValidate="Txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Please enter Email ID"></asp:RegularExpressionValidator>
					</div>

					<div class="wrap-input100 validate-input bg1" data-validate="Please Type Mobile Number">
						<span class="label-input100">Mobile Number</span>
						<asp:TextBox ID="Txt_mobileno" class="input100" runat="server" ></asp:TextBox>
						<asp:RegularExpressionValidator ID="REmobileno" ForeColor="red" ControlToValidate="Txt_mobileno" ValidationExpression="^[6789]\d{9}$" runat="server" ErrorMessage="Please enter Mobile No"></asp:RegularExpressionValidator>
					</div>

					<div class="wrap-input100 bg1 rs1-wrap-input100" style="margin-right:10px;margin-left:-10px">
					<span class="label-input100">Semester</span>
						<asp:DropDownList ID="DropDown_semester" class="js-select2" runat="server">
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
					<div class="dropDownSelect2"></div>
					</div>

					<div class="wrap-input100 bg1 rs1-wrap-input100" style="margin-left:20px">
					<span class="label-input100">Skill</span>
					<asp:DropDownList ID="DropDown_skill" class="js-select2" runat="server">
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
					<div class="dropDownSelect2"></div>
				</div>
					
					<div class="wrap-input100 validate-input bg1" data-validate="Please Type CGPA">
						<span class="label-input100">CGPA</span>
						<asp:TextBox ID="Cgpa" class="input100" runat="server" ></asp:TextBox>
					</div>
                </asp:Panel>

				<asp:Panel ID="changepasswordpanel" runat="server" class="container-contact100-form-btn">
					<div class="wrap-input100 validate-input bg1" data-validate="Please Type Current Password">
						<span class="label-input100">Current Password</span>
						<asp:TextBox ID="Txt_CPWD"  runat="server" class="input100" TextMode="Password" required="true" ></asp:TextBox>
					</div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
					<div class="wrap-input100 validate-input bg1" data-validate="Please Type New Password">
						<span class="label-input100">New Password</span>
						<asp:TextBox ID="Txt_NPWD" runat="server" class="input100" TextMode="Password" required="true" ></asp:TextBox>
					</div>
					<asp:RegularExpressionValidator ID="Rge_NPWD" ControlToValidate="Txt_NPWD" runat="server" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*[$@!%*?&])[A-Za-z\d$@$!%*?&]{7,}" ErrorMessage="Minimum 7 characters with one special character and Capital character"></asp:RegularExpressionValidator>

					
					<div class="wrap-input100 validate-input bg1" data-validate="Please Re-Type Password">
						<span class="label-input100">Re-type Password</span>
						<asp:TextBox ID="Txt_RPWD" runat="server" class="input100" TextMode="Password" required="true" ></asp:TextBox>
					</div>
					<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txt_NPWD" ControlToValidate="Txt_RPWD" ErrorMessage="*Passwords does not match, Enter the matching Password!" ForeColor="Red"></asp:CompareValidator>

					                
                    <asp:Button ID="Btn_Submit" runat="server" class="contact100-form-btn" Text="Submit" OnClick="Btn_Submit_Click">
					</asp:Button>
				</asp:Panel>

				

				
               <center><asp:DetailsView ID="PersonalUpdateView" runat="server" Height="350px" Width="815px" CssClass="m-t-0" AlternatingRowStyle-BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderWidth="5px" BorderColor="Black">
				</asp:DetailsView></center> 

				

				<div class="container-contact100-form-btn">
                    <asp:Button ID="Btn_Edit" runat="server" class="contact100-form-btn" Text="Edit Personal Details" OnClick="OnEdit_Profile">
					</asp:Button>
				</div>
				
                <br />
				<div class="container-contact100-form-btn">
                    <asp:Button ID="Btn_Save" runat="server" class="contact100-form-btn" Text="Save" OnClick="OnSave_Profile">
					</asp:Button>
				</div>

				<div class="container-contact100-form-btn">
                    <asp:Button ID="Btn_Pwd" runat="server" class="contact100-form-btn" Text="Change Password" OnClick="Btn_Pwd_Click" >
					</asp:Button>
				</div>

			</form>
		</div>
	</div>
	</section>


		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

		<script src="Stud_Dash_Items/js/jquery.min.js"></script>
		<script src="Stud_Dash_Items/js/jquery-migrate-3.0.1.min.js"></script>
		<script src="Stud_Dash_Items/js/popper.min.js"></script>
		<script src="Stud_Dash_Items/js/bootstrap.min.js"></script>
		<script src="Stud_Dash_Items/js/jquery.easing.1.3.js"></script>
		<script src="Stud_Dash_Items/js/jquery.waypoints.min.js"></script>
		<script src="Stud_Dash_Items/js/jquery.stellar.min.js"></script>
		<script src="Stud_Dash_Items/js/owl.carousel.min.js"></script>
		<script src="Stud_Dash_Items/js/jquery.magnific-popup.min.js"></script>
		<script src="Stud_Dash_Items/js/jquery.animateNumber.min.js"></script>
		<script src="Stud_Dash_Items/js/bootstrap-datepicker.js"></script>
		<script src="Stud_Dash_Items/js/jquery.timepicker.min.js"></script>
		<script src="Stud_Dash_Items/js/scrollax.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="Stud_Dash_Items/js/google-map.js"></script>
		
		<script src="Stud_Dash_Items/js/main.js"></script>
		
		<!--===============================================================================================-->
			<script src="TableForms/vendor/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
			<script src="TableForms/vendor/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
			<script src="TableForms/vendor/bootstrap/js/popper.js"></script>
			<script src="TableForms/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
			<script src="TableForms/vendor/select2/select2.min.js"></script>
			<script>
                $(".js-select2").each(function () {
                    $(this).select2({
                        minimumResultsForSearch: 20,
                        dropdownParent: $(this).next('.dropDownSelect2')
                    });


                    $(".js-select2").each(function () {
                        $(this).on('select2:close', function (e) {
                            if ($(this).val() == "Please chooses") {
                                $('.js-show-service').slideUp();
                            }
                            else {
                                $('.js-show-service').slideUp();
                                $('.js-show-service').slideDown();
                            }
                        });
                    });
                })
            </script>
		<!--===============================================================================================-->
			<script src="TableForms/vendor/daterangepicker/moment.min.js"></script>
			<script src="TableForms/vendor/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
			<script src="TableForms/vendor/countdowntime/countdowntime.js"></script>
		<!--===============================================================================================-->
			<script src="TableForms/vendor/noui/nouislider.min.js"></script>
			<script>
                var filterBar = document.getElementById('filter-bar');

                noUiSlider.create(filterBar, {
                    start: [1500, 3900],
                    connect: true,
                    range: {
                        'min': 1500,
                        'max': 7500
                    }
                });

                var skipValues = [
                    document.getElementById('value-lower'),
                    document.getElementById('value-upper')
                ];

                filterBar.noUiSlider.on('update', function (values, handle) {
                    skipValues[handle].innerHTML = Math.round(values[handle]);
                    $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
                    $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
                });
            </script>
		<!--===============================================================================================-->
			<script src="TableForms/js/main.js"></script>

		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
		<script>
            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>	
		
</body>
</html>
