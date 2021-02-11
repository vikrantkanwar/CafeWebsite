<%
	HttpSession hs = request.getSession();
if (hs.getAttribute("username") == null)
	response.sendRedirect("index.jsp");
%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gallery</title>
<link rel="stylesheet" type="text/css" href="css\cafestyle.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/lightbox.min.css" />
<script type="text/javascript" src="js/lightbox-plus-jquery.min.js"></script>
<script src="js/cafejs.js"></script>
</head>
<body>

	<header
		style="height: 85vh; background-image: url(images/3.jpg)">
		<nav class="navbar navbar-fixed-top">
			<div class="logo">
				<a href="Welcome.jsp"><img src="images\logo%202.png" /></a>
			</div>
			<ul>
				<li><a href="Welcome.jsp">Home</a></li>
				<li><a href="menu.jsp">Menu</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li><a href="reservation.jsp">Book a table</a></li>
				<li class="active"><a href="cart.jsp"><i
						class="fa fa-shopping-cart"></i> Cart</a></li>
				<li><a href="profile.jsp">Profile</a></li>
				<li><a href="Logout"><i class="fa fa-sign-out"
						aria-hidden="true"></i> Log Out</a></li>
			</ul>
		</nav>
		<div class="title">
			<h1>CART</h1>
		</div>
	</header>
	<div class="container">
		<h2>CART</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Item</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Remove Items</th>
				</tr>
			</thead>
			<tbody>

				<%
					try {
					String url = "jdbc:mysql://localhost:3306/cafe";
					String username = "root";
					String password = "1805";

					Connection con = DriverManager.getConnection(url, username, password);
					String query = "select * from orders where email=?";
					PreparedStatement pstmt = con.prepareStatement(query);
					pstmt.setString(1, hs.getAttribute("email").toString());
					ResultSet rs = pstmt.executeQuery();
					while (rs.next()) {
				%>

				<tr>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td>&#8377;<%=rs.getString(4)%></td>
					<td><form action="RemoveItem" method="post">
							<input type="hidden" name="email" value="<%=rs.getString(1)%>">
							<input type="hidden" name="toRemove" value="<%=rs.getString(2)%>">
							<input type="submit" value="Remove">
						</form></td>
				</tr>
				<%
					}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
				<%
					try {
					String url = "jdbc:mysql://localhost:3306/cafe";
					String username = "root";
					String password = "1805";

					Connection con = DriverManager.getConnection(url, username, password);
					String query = "select sum(price * quantity) from orders where email=?";
					PreparedStatement pstmt = con.prepareStatement(query);
					pstmt.setString(1, hs.getAttribute("email").toString());
					ResultSet rs = pstmt.executeQuery();
					while (rs.next()) {
				%>
				<tr>
					<th colspan="4">Total = &#8377;<%=rs.getString(1)%></th>
				</tr>
				<%
					}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</tbody>
		</table>
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
										<td class="ohtl">Monday-Friday</td>
										<td>8:00 - 20:00</td>
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
