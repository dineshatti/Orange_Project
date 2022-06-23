<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Job.aspx.cs" Inherits="Orange_Project.Add_Job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Job</title>

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
</head>
<body">
    <div class="py-3" runat="server">
		<div class="container">
			<div class="row d-flex align-items-start align-items-center px-3 px-md-0">
				<div class="col-md-4 d-flex mb-2 mb-md-0">
					<a class="navbar-brand d-flex align-items-center" href="Company_Dashboard.aspx"><img src="Stud_Dash_Items/images/Logo_Pic.ico"></img></a>
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
					<li class="nav-item"><a href="Company_Dashboard.aspx" class="nav-link">Home</a></li>
					<li class="nav-item active"><a href="Add_Job.aspx" class="nav-link">Add Jobs</a></li>
					<li class="nav-item"><a href="Comp_Inbox.aspx" class="nav-link">Inbox</a></li>
					<li class="nav-item"><a href="Comp_Profile.aspx" class="nav-link">Profile</a></li>
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
				<span class="contact100-form-title">
					JOB UPDATE
				</span>

				<div class="wrap-input100 validate-input bg1" data-validate="Please Type Job Title">
					<span class="label-input100">Job Title</span>
                    <asp:TextBox ID="job_title" runat="server" class="input100" placeholder="e.g Software Developer"></asp:TextBox>
				</div>


				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Degree</span>
					<asp:DropDownList ID="DropDown_degree" class="js-select2" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>BE/BTech</asp:ListItem>
                                        <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>Arts & Science</asp:ListItem>
                    </asp:DropDownList>
					<div class="dropDownSelect2"></div>
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
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

				<div class="wrap-input100 validate-input bg1" data-validate="Please Type Salary">
					<span class="label-input100">Salary</span>
                    <asp:TextBox ID="salary" runat="server" class="input100" placeholder="e.g 10,000"></asp:TextBox>
				</div>

				<div class="wrap-input100 validate-input bg1" data-validate="Please Type Location">
					<span class="label-input100">Location</span>
                    <asp:TextBox ID="location" runat="server" class="input100" placeholder="e.g Coimbatore"></asp:TextBox>
				</div>


				<div class="wrap-input100 validate-input bg0 rs1-alert-validate" data-validate = "Please Type Job Description">
					<span class="label-input100">Job Description</span>
                    <asp:TextBox ID="job_description" class="input100" runat="server" placeholder="Type Your Description here..." TextMode="MultiLine"></asp:TextBox>
				</div>

				<div class="wrap-input100 validate-input bg0 rs1-alert-validate" data-validate = "Please Enter Last Date to Apply">
					<span class="label-input100">Last Date</span>
                    <asp:TextBox ID="lastdate" class="input100" runat="server" TextMode="Date"></asp:TextBox>
				</div>

				<div class="container-contact100-form-btn">
                    <asp:Button ID="btn_submit" runat="server" class="contact100-form-btn" Text="Add Job" OnClick="btn_submit_Click">
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
				$(".js-select2").each(function(){
					$(this).select2({
						minimumResultsForSearch: 20,
						dropdownParent: $(this).next('.dropDownSelect2')
					});


					$(".js-select2").each(function(){
						$(this).on('select2:close', function (e){
							if($(this).val() == "Please chooses") {
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
					start: [ 1500, 3900 ],
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

				filterBar.noUiSlider.on('update', function( values, handle ) {
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
		  function gtag(){dataLayer.push(arguments);}
		  gtag('js', new Date());

		  gtag('config', 'UA-23581568-13');
        </script>	
		
		<script type="text/javascript">
            $(function () {
                var today = new Date();
                var month = ('0' + (today.getMonth() + 1)).slice(-2);
                var day = ('0' + today.getDate()).slice(-2);
                var year = today.getFullYear();
                var date = year + '-' + month + '-' + day;
                $('[id*=lastdate]').attr('min', date);
            });
        </script>

</body>
</html>
