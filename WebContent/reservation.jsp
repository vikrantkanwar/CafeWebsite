
<%
	HttpSession hs = request.getSession();
if (hs.getAttribute("username") == null)
	response.sendRedirect("index.jsp");
%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reservation</title>
<link rel="stylesheet" type="text/css" href="css\cafestyle.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/cafejs.js"></script>
<link href="http://fonts.googleapis.com/css?family=Great+Vibes"
	rel="stylesheet" type="text/css" />
<style>
.heading {
	font: 400 80px/1.3 "Great Vibes", Helvetica, sans-serif;
	color: burlywood;
}

.subheading {
	font-weight: bolder;
	font: 350 60px/1.3 "Century Gothic", Helvetica, sans-serif;
	color: black;
}

.reservation-form input, text, select {
	width: 80%;
	height: 40px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	resize: vertical;
}

.form-control:focus {
	border-color: #000;
	-webkit-box-shadow: none;
	box-shadow: none;
}

.reservation-form input[type="submit"] {
	width: 250px;
	height: 50px;
	background-color: #181818;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.reservation-form input[type="submit"]:hover {
	background-color: #000;
}
</style>
</head>

<body>
	<header style="height: 85vh; background-image: url(images/29.jpg)">
		<nav class="navbar navbar-fixed-top">
			<div class="logo">
				<a href="Welcome.jsp"><img src="images\logo%202.png" /></a>
			</div>
			<ul>
				<li ><a href="Welcome.jsp">Home</a></li>
				<li><a href="menu.jsp">Menu</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li class="active"><a href="reservation.jsp">Book a table</a></li>
				<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>
						Cart</a></li>
				<li><a href="profile.jsp">Profile</a></li>
				<li><a href="Logout"><i class="fa fa-sign-out"
						aria-hidden="true"></i> Log Out</a></li>
			</ul>
		</nav>
		<div class="title">
			<h1>Book a Table</h1>
		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-6">
				<h2 class="heading">
					Book a table<br />
					<span class="subheading">Make Reservation</span>
				</h2>
				<form method="post" action="Reservation">
					<div class="reservation-form">
						<div style="padding-bottom: 18px; font-size: 18px">We would
							be glad to reserve a table for you at our cafe!</div>
						<div style="padding-bottom: 18px">
							First Name<span style="color: red"> *</span><br /> <input type="text"
								id="data_1" name="data_1" style="max-width: 600px"
								class="form-control" />
						</div>
						<div style="padding-bottom: 18px">
							Last Name<span style="color: red"> *</span><br /> <input type="tel"
								id="data_2" name="data_2" style="max-width: 600px"
								class="form-control" />
						</div>
						<div style="padding-bottom: 18px">
							Phone<br /> <input type="text" id="data_3" name="data_3"
								style="max-width: 600px" class="form-control" />
						</div>
						<div style="padding-bottom: 18px">
							Email<span style="color: red"> *</span><br /> <input type="text"
								id="data_4" name="data_4" style="max-width: 250px"
								class="form-control" />
						</div>
						<div style="padding-bottom: 18px">
							Date<span style="color: red"> *</span><br /> <input type="text"
								id="data_5" name="data_5" style="max-width: 250px"
								class="form-control" />
						</div>
						
						<div style="padding-bottom: 18px">
							Time<span style="color: red"> *</span><br /> <input type="text"
								id="data_5" name="data_6" style="max-width: 250px"
								class="form-control" />
						</div>
						<div style="padding-bottom: 18px">
							Number of Attendees<span style="color: red"> *</span><br /> <select
								id="data_6" name="data_7" style="max-width: 250px"
								class="form-control">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>4+ (Specify in Comments)</option>
							</select>
						</div>
						<div style="padding-bottom: 18px">
							Comments / Additional Requests<br />
							<textarea id="data_7" false name="data_8"
								style="max-width: 400px" rows="6" class="form-control">
                </textarea>
						</div>
						<div style="padding-bottom: 18px">
							<input name="skip_Submit" value="Submit" type="submit" />
						</div>
					</div>
				</form>
			</div>
			<div class="col-sm-6 col-md-6" style="padding: 70px 0">
				<img src="images/24.jpg"
					style="height: 800px; width: 600px; padding-left: 40px" />
			</div>
		</div>
	</div>

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
										countries Vokalia and Consonantia, there live the blind texts.
									</p>
								</div>
								<div class="footer-social-icons">
									<div class="menu">
										<a class="mbtn" href="#"><i
											class="fa fa-facebook-official" aria-hidden="true"></i></a>
										<a class="mbtn" href="#"><i
											class="fa fa-twitter" aria-hidden="true"></i></a> <a class="mbtn"
											href="#"><i
											class="fa fa-google-plus" aria-hidden="true"></i></a> <a
											class="mbtn" href="#"><i
											class="fa fa-youtube-play" aria-hidden="true"></i></a> <a
											class="mbtn" href="#"><i
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
									<li><a href="menu.jsp">Menu</a></li>
									<li><a href="gallery.jsp">Gallery</a></li>
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
											placeholder="Enter email address" />
									</div>
									<div class="footer-form-box">
										<input type="submit" class="footer-form-submit-style"
											value="SUBMIT" />
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
