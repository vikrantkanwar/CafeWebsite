<html>
<head>
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="css\cafestyle.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/cafejs.js"></script>
<style>
body {
	background-color: black;
}

section {
	display: flex;
	align-items: center;
	justify-content: center;
}

button, input {
	border: none;
	outline: none;
}

.signup {
	background-color: black;
	opacity:;
	width: 100%;
	max-width: 500px;
	padding: 50px 70px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	border-radius: 20px;
	box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px
		rgba(0, 0, 0, 0.05);
}

h1 {
	text-align: center;
	color: white
}

h2 {
	text-align: center;
	font-size: 1.5rem;
	margin-bottom: 40px;
}

h2 span a {
	text-decoration: none;
	cursor: pointer;
	color: white
}

h2 span a:hover {
	text-decoration: none;
	color: #a4243b;
}
/*  Field */
.signup__field {
	display: flex;
	flex-direction: column;
	width: 100%;
	position: relative;
	margin-bottom: 50px;
}

.signup__field:before {
	content: "";
	display: inline-block;
	position: absolute;
	width: 0px;
	height: 2px;
	background: #a4243b;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
	transition: all 0.4s ease;
}

.signup__field:hover:before {
	width: 100%;
}
/*  Input */
.signup__input {
	width: 100%;
	height: 100%;
	font-size: 16px;
	padding: 10px 2px 0;
	color: white;
	border-bottom: 2px solid #e0e0e0;
	background-color: transparent;
}

:placeholder-shown {
	font-size: 16px;
}
/*  Button */
.btn {
	background: #181818;
	color: white;
	padding: 12px 0;
	font-size: 16px;
	border-radius: 25px;
	cursor: pointer;
}

.btn:hover {
	color: black;
	font-weight: bold;
	background: #a4243b
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-fixed-top">
			<div class="logo">
				<a href="index.jsp"><img src="images\logo%202.png"></a>
			</div>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="signup.jsp"><i
						class="fa fa-user" aria-hidden="true"></i> Sign Up/Log In</a></li>
				<li><a href="reset.jsp">Reset Password</a></li>
			</ul>
		</nav>
		<section
			style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; margin: auto;">
			<form class="signup" action="Login" method="post">
				<h1>Welcome Back!</h1>
				<h2>
					Not An Existing User? <span><a href="signup.jsp">Sign
							Up</a></span>
				</h2>
				<div class="signup__field">
					<input class="signup__input" type="text" name="email" id="email"
						required placeholder="Email" />
				</div>

				<div class="signup__field">
					<input class="signup__input" type="password" name="password"
						id="password" required placeholder="Password" />
				</div>

				<button class="btn" type="submit" value="Log In">Log In</button>
			</form>
		</section>
	</header>

	<!--Footer section-->
	<div class="navbar navbar-inverse" class="footer-wrapper">
		<div class="container-fluid">
			<div class="footer-mid-part">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-12">
						<div class="footer-section-one">
							<div class="footer-heading">
								<h2>Caffaccino</h2>
							</div>
							<div class="footer-contact-box">
								<div class="footer-contact-text">
									<p>Far far away, behind the word mountains, far from the
										countries Vokalia and Consonantia, there live the blind texts.</p>
								</div>
								<div class="footer-social-icons">
									<div class="menu">
										<a class="mbtn" href="#"><i
											class="fa fa-facebook-official" aria-hidden="true"></i></a> <a
											class="mbtn" href="#"><i class="fa fa-twitter"
											aria-hidden="true"></i></a> <a class="mbtn" href="#"><i
											class="fa fa-google-plus" aria-hidden="true"></i></a> <a
											class="mbtn" href="#"><i class="fa fa-youtube-play"
											aria-hidden="true"></i></a> <a class="mbtn" href="#"><i
											class="fa fa-instagram" aria-hidden="true"></i></a>
									</div>
								</div>
								<div class="clr"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-12">
						<div class="footer-section-two">
							<div class="footer-heading">
								<h2>Open Hours</h2>
							</div>
							<div class="footer-link">
								<table class="oht" cellspacing="10px">
									<tr>
										<td class="ohtl">Monday - Friday</td>
										<td>9:00 - 20:00</td>
									</tr>
									<tr>
										<td class="ohtl">Saturday</td>
										<td>12:00 - 18:00</td>
									</tr>
									<tr>
										<td class="ohtl">Sunday</td>
										<td>Closed</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-12">
						<div class="footer-section-two">
							<div class="footer-heading">
								<h2>Quick Links</h2>
							</div>
							<div class="footer-link">
								<ul class="footerlink">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Our Story</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-12">
						<div class="footer-section-three">
							<div class="footer-heading">
								<h2>Newsletter</h2>
							</div>
							<div class="footer-form">
								<div class="footer-contact-text">
									<p>Far far away, behind the word mountains, far from the
										countries.</p>
								</div>
								<form method="post" action="#">
									<div class="footer-form-box">
										<input type="email" class="footer-form-style"
											placeholder="Enter email address">
									</div>
									<div class="footer-form-box">
										<input type="submit" class="footer-form-submit-style"
											value="SUBMIT">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">&copy;
						caffeccino.com</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
