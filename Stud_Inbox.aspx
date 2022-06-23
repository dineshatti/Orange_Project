<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stud_Inbox.aspx.cs" Inherits="Orange_Project.Stud_Inbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Inbox</title>

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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> 
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
	<style>
		table.table-bordered{
			border:1px solid black;
		}
		table.table-bordered > thead > tr > th{
			border:1px solid black;
		}
		table.table-bordered > tbody > tr > td{
			border:1px solid black;
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
					<li class="nav-item active"><a href="Stud_Inbox.aspx" class="nav-link">Inbox</a></li>
					<li class="nav-item"><a href="Stud_Profile.aspx" class="nav-link">Profile</a></li>
					<li class="nav-item"><a href="Login_Page.aspx" class="nav-link">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	
	<section class="hero-wrap js-fullheight">
		<div class="container-contact100" style="background-image: url('TableForms/images/bckgrnd_img1.jpg');background-size:100%;">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" runat="server">
				<div class="container py-4">  
					<h1 class="text-center text-uppercase contact100-form-title">Accepted List</h1>
                    <asp:Label ID="Label1" style="margin-left:40%;font-size:20px;" runat="server" ForeColor="Red"></asp:Label>
					<asp:Repeater ID="Repeater1" runat="server">  
						<ItemTemplate>  
							<table class="table table-bordered">  
								<tr>  
									<td>  
										<table class="table table-striped">  
											<tr>  
												<td style="width:50%;"><b>Company Name :</b></td>  
												<td><%#Eval("Name")%></td>  
											</tr>  
											<tr>  
												<td><b>Role :</b></td>  
												<td><%#Eval("Role")%></td>  
											</tr>  
											<tr>  
												<td><b>Contact Person :</b></td>  
												<td><%#Eval("Person")%></td>  
											</tr>  
											<tr>  
												<td><b>Mobile :</b></td>  
												<td><%#Eval("Mobile")%></td>  
											</tr>  
										</table>  
									</td>  
								</tr>  
							</table>  
						</ItemTemplate>  
					</asp:Repeater>  
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
</body>
</html>
