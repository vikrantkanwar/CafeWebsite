<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Caffecino</title>
<link rel="stylesheet" type="text/css" href="css\cafestyle.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js\parallax.js"></script>
<script src="js/cafejs.js"></script>
</head>
<body>
	<!--Header section-->
	<header>
		<nav class="navbar navbar-fixed-top">
			<div class="logo">
				<a href="index.jsp"><img src="images\logo%202.png"></a>
			</div>
			<ul>
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="login.jsp"><i class="fa fa-user"
						aria-hidden="true"></i> Sign Up/Log In</a></li>
			 	<li><a href="reset.jsp">Reset Password</a></li>
			</ul>
		</nav>
		<div class="title">
			<h1>Caffeccino Cafe</h1>
		</div>
	</header>

	<!--Body section-->
	<section id="aboutus" style="padding: 20px">
		<div class="container">
			<div class="row">
				<div class="content col-sg-6 col-md-6" style="padding: 70px 0;">
					<h1>About us</h1>
					<p>Our cafe has bagged the Limca Book of Records 2015 for being
						smallest restaurant in the country, and it is also popular for
						it's not so small portions. As we says: "Space can never be a
						constraint to success".</p>
				</div>
				<div class="content col-sg-3 col-md-3">
					<img src="images\4.jpg" height="400px" width="270px">
				</div>
				<div class="content col-sg-3 col-md-3">
					<img src="images\5.jpg" height="400px" width="270px">
				</div>
			</div>
		</div>
	</section>

	<div class="parallax" data-parallax="scroll" data-z-index="1"
		data-image-src="images\16.jpg"></div>

	<section id="ctc" style="padding: 20px">
		<div class="container">
			<div class="row">
				<div class="content col-sg-6 col-md-6">
					<img src="images/10.jpg" height="300px" width="500px"
						style="border-radius: 8px">
				</div>
				<div class="content col-sg-6 col-md-6" style="padding: 70px 0;">
					<h1>Committed to Comfort</h1>
					<p>Don’t hesitate to ask for whatever you need, and don’t be
						surprised to find yourselves on a first name basis with our
						servers. We love getting to know people. Your preferences and
						expectations might differ, but that’s no reason not to meet them.
					</p>
				</div>
			</div>
		</div>
	</section>

	<div class="parallax" data-parallax="scroll" data-z-index="1"
		data-image-src="images\30.jpg"></div>

	<section id="ourstory" style="padding: 20px">
		<div class="container">
			<div class="row">
				<div class="content col-sg-6 col-md-6" style="padding: 70px 0;">
					<h1>Our Story</h1>
					<p>Cappaccino opened its doors in 2001 as Mumbai’s first
						European style bistro. It’s too early to say we’ve made history,
						but it has become what you might refer to as an institution. The
						idea was to start create something sophisticated, but fun and
						casualin equal amounts. So that’s what we did, and that’s what we
						intend to keep doing.</p>
				</div>
				<div class="content col-sg-3 col-md-3">
					<img src="images\11.jpg" height="300px" width="500px"
						style="border-radius: 8px">
				</div>
			</div>
		</div>
	</section>

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
									<li><a href="#aboutus">About Us</a></li>
									<li><a href="#ourstory">Our Story</a></li>
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