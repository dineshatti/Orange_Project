<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="Orange_Project.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orange</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel = "icon" href =  "Stud_Dash_Items/images/logo_icon.ico" type = "image/x-icon"> 
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_Page_Items/css/main.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->

	<style type="text/css">
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            background-color: black;
            z-index: 99;
            opacity: 0.8;
            filter: alpha(opacity=80);
            -moz-opacity: 0.8;
            min-height: 100%;
            width: 100%;
        }
 
        .loading {
            font-family: Arial;
            font-size: 10pt;
            border: 5px solid black;
            width: 100%;
            height: 100%;
            display: none;
            position: fixed;
            background-color: White;
            z-index: 999;
			animation : transition;
			animation-duration: 8s;
			animation-fill-mode:forwards;
        }
		@keyframes transition
		{
			from {opacity:1;}
			to {opacity:0;}
		}
		.trans{
			transition-delay:5s;
		}
    </style>

</head>
<body>

<!--===============================================================================================-->
	<div class="loading" align="center">
        <img style="margin-top:200px;align-content:baseline;height:30%;" src="Stud_Dash_Items/images/Logo_Pic.ico" alt=""/>
    </div>
    <script type="text/javascript">
		var modal, loading;

        function ShowProgress() {
            modal = document.createElement("DIV");
            modal.className = "modal";
            document.body.appendChild(modal);
            loading = document.getElementsByClassName("loading")[0];
            loading.style.display = "block";
            var top = Math.max(window.innerHeight / 2 - loading.offsetHeight / 2, 0);
            var left = Math.max(window.innerWidth / 2 - loading.offsetWidth / 2, 0);
            loading.style.top = top + "px";
			loading.style.left = left + "px";
		};
		ShowProgress();
        
		        
    </script>
	
   
    <!-- Keep the Page Content Here.-->
 
    <script type="text/javascript">
        function setCookie(name, value, days) {
            var expires = "";
            if (days) {
                var date = new Date();
                date.setTime(date.getTime() + (days * 24 *  60 * 60));
                expires = "; expires=" + date.toUTCString();
            }
            document.cookie = name + "=" + (value || "") + expires + "; path=/";
        }
        function getCookie(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
            }
            return null;
        }
		window.onload = function () {
			if (this.getCookie("Splash") == null) {
				setTimeout(function () {
					setCookie("Splash", 1, 10);
					document.body.removeChild(modal);
					loading.style.display = "none";
				}, 4000); //Delay just used for example and must be set to 0.
			}
			else {
                document.body.removeChild(modal);
                loading.style.display = "none";
            }
        };
    </script>

<!--===============================================================================================-->


    <div class="limiter" runat="server">
		<div class="container-login100" style="background-image: url('Login_Page_Items/images/bg.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" runat="server">
					
					<span class="login100-form-title p-b-34 p-t-27">
						Sign in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                        <asp:TextBox ID="username" class="input100" placeholder="Username" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
                        <asp:TextBox ID="passwrd" class="input100" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="wrap-input100 validate-input">
                        <asp:DropDownList ID="DropDownList1" class="input100" runat="server">
							<asp:ListItem class="input10" Text="Student" Value="1" Selected="True" />
							<asp:ListItem class="input10" Text="Company" Value="2" />
                        </asp:DropDownList>
					</div>
					<center><asp:Label ID="alert" runat="server" ForeColor="Red"></asp:Label></center>
					<div class="container-login100-form-btn">
						
                        <asp:Button ID="Button1" class="login100-form-btn" OnClick="login" runat="server" Text="Login" />
					</div>
                    

					<div style="margin-left:35%;margin-top:25px;">
						<a class="txt1" href="Forgot_Password.aspx">
							Forgot Password?
						</a>
					</div>
					<div style="margin-left:35%;margin-top:25px;">
						<a class="txt1" href="Common_Signup.aspx">
							<u>New User? <b>SignUp</b></u>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1" runat="server"></div>
	
<!--===============================================================================================-->
	<script src="Login_Page_Items/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_Page_Items/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_Page_Items/vendor/bootstrap/js/popper.js"></script>
	<script src="Login_Page_Items/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_Page_Items/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_Page_Items/vendor/daterangepicker/moment.min.js"></script>
	<script src="Login_Page_Items/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Login_Page_Items/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Login_Page_Items/js/main.js"></script>
</body>
</html>
