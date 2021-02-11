<%
	HttpSession hs = request.getSession();
if (hs.getAttribute("username") == null)
	response.sendRedirect("index.jsp");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gallery</title>
<link rel="stylesheet" type="text/css" href="css\cafestyle.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/lightbox.min.css">
<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
<script src="js/cafejs.js"></script>
</head>
<body>
	<header
		style="height: 85vh; background-image: url(images/20edited.jpg);">
		<nav class="navbar navbar-fixed-top">
			<div class="logo">
				<a href="Welcome.jsp"><img src="images\logo%202.png"></a>
			</div>
			<ul>
				<li><a href="Welcome.jsp">Home</a></li>
				<li><a href="menu.jsp">Menu</a></li>
				<li class="active"><a href="gallery.jsp">Gallery</a></li>
				<li><a href="reservation.jsp">Book a table</a></li>
				<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>
						Cart</a></li>
				<li><a href="profile.jsp">Profile</a></li>
				<li><a href="Logout"><i class="fa fa-sign-out"
						aria-hidden="true"></i> Log Out</a></li>
			</ul>
		</nav>
		<div class="title">
			<h1>GALLERY</h1>
		</div>
	</header>
	<div class="gallery">
		<a href="images/gallery/1-1.jpg" data-lightbox="mygallery"><img
			src="images/gallery/1-1.jpg"></a> <a href="images/gallery/1.jpg"
			data-lightbox="mygallery"><img src="images/gallery/1.jpg"></a>
		<a href="images/gallery/2-1.jpg" data-lightbox="mygallery"><img
			src="images/gallery/2-1.jpg"></a> <a href="images/gallery/2.jpg"
			data-lightbox="mygallery"><img src="images/gallery/2.jpg"></a>
		<a href="images/gallery/3-1.jpg" data-lightbox="mygallery"><img
			src="images/gallery/3-1.jpg"></a> <a href="images/gallery/3.jpg"
			data-lightbox="mygallery"><img src="images/gallery/3.jpg"></a>
		<a href="images/gallery/4-1.jpg" data-lightbox="mygallery"><img
			src="images/gallery/4-1.jpg"></a> <a href="images/gallery/4.jpg"
			data-lightbox="mygallery"><img src="images/gallery/4.jpg"></a>
		<a href="images/gallery/5-1.jpg" data-lightbox="mygallery"><img
			src="images/gallery/5-1.jpg"></a> <a href="images/gallery/5.jpg"
			data-lightbox="mygallery"><img src="images/gallery/5.jpg"></a>
		<a href="images/gallery/9.jpg" data-lightbox="mygallery"><img
			src="images/gallery/9.jpg"></a>
		<a href="images/gallery/10.jpg" data-lightbox="mygallery"><img
			src="images/gallery/10.jpg"></a>
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