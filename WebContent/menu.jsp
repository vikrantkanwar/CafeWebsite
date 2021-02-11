<%
	HttpSession hs = request.getSession();
if (hs.getAttribute("username") == null)
	response.sendRedirect("index.jsp");
%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
<link rel="stylesheet" type="text/css" href="css\cafestyle.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script src="js/cafejs.js"></script>
<style>
.filter-button {
	font-size: 18px;
	border: 1px solid #4CAF50;
	border-radius: 5px;
	text-align: center;
	color: #4CAF50;
	margin-bottom: 30px;
}

.filter-button:hover {
	font-size: 18px;
	border: 1px solid #4CAF50;
	border-radius: 5px;
	text-align: center;
	color: #ffffff;
	background-color: #4CAF50;
}

.btn-default:active .filter-button:active {
	background-color: #4CAF50;
	color: white;
}

img {
	height: 365px;
	width: 365px;
}

h4 {
	text-align: center;
	font-weight: bold;
}

.gallery_product {
	margin-bottom: 30px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(".filter-button").click(function() {
			var value = $(this).attr("data-filter");
			if (value == "all") {
				$(".filter").show("1000");
			} else {
				$(".filter").not("." + value).hide("3000");
				$(".filter").filter("." + value).show("3000");
			}
		});
		if ($(".filter-button").removeClass("active")) {
			$(this).removeClass("active");
		}
		$(this).addClass("active");
	});
</script>
</head>
<body>
	<header style="height: 85vh; background-image: url(images/2.jpg)">
		<nav class="navbar navbar-fixed-top">
			<div class="logo">
				<a href="Welcome.jsp"><img src="images\logo%202.png" /></a>
			</div>
			<ul>
				<li ><a href="Welcome.jsp">Home</a></li>
				<li class="active"><a href="menu.jsp">Menu</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li><a href="reservation.jsp">Book a table</a></li>
				<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>
						Cart</a></li>
				<li><a href="profile.jsp">Profile</a></li>
				<li><a href="Logout"><i class="fa fa-sign-out"
						aria-hidden="true"></i> Log Out</a></li>
			</ul>
		</nav>
		<div class="title">
			<h1>Menu</h1>
		</div>
	</header>

	<div class="container">
		<div style="align-content: center; margin: 20px">
			<button class="btn btn-default filter-button" data-filter="all">
				All</button>
			<button class="btn btn-default filter-button" data-filter="bev">
				Beverages</button>
			<button class="btn btn-default filter-button" data-filter="food">
				Food</button>
			<button class="btn btn-default filter-button" data-filter="des">
				Deserts</button>
		</div>

		<!--menu items -->
		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter food">
				<img src="images/products/Afghani-Chicken-Biryani_2.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Afghani Chicken Biryani</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Afghani Chicken Biryani">
					<input type="hidden" name="price" value="340">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter food">
				<img src="images/products/Big-Crunch-Chicken-Classic-Burger.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Big-Crunch Chicken Classic Burger</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item"
						value="Big-Crunch Chicken Classic Burger"> <input
						type="hidden" name="price" value="180">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter food">
				<img src="images/products/Big-Crunch-Veg-Cheese-Burger_2.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Big Crunch Veg Cheese Burger</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Big Crunch Veg Cheese Burger">
					<input type="hidden" name="price" value="140">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter food">
				<img src="images/products/CrispyVeg_2.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Crispy Veg</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Crispy Veg"> <input
						type="hidden" name="price" value="90">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>


		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter food">
				<img src="images/products/Chilli-Cheese-Toastizza_2.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Chilli Cheese Toastizza</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Chilli Cheese Toastizza">
					<input type="hidden" name="price" value="170">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>

		</form>


		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/Assam-Tea_0.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Assam Tea</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Assam Tea"> <input
						type="hidden" name="price" value="50">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/836x663-strawberry_0.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Strawberry Shake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Strawberry Shake"> <input
						type="hidden" name="price" value="110">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/Cafe-Mocha.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Cafe Mocha</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Cafe Mocha"> <input
						type="hidden" name="price" value="85">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/CafeLatte.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Cafe Latte</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Cafe Latte"> <input
						type="hidden" name="price" value="95">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/Cappuccino_3.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Cappuccino</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Cappuccino"> <input
						type="hidden" name="price" value="130">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/chocolate_0.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Chocolate Shake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Chocolate Shake"> <input
						type="hidden" name="price" value="75">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/Cold-Cocoa-Latte_0.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Cold Cocoa Latte</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Cold Cocoa Latte"> <input
						type="hidden" name="price" value="65">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/Filter-Coffee.png" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Filter Coffee</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Filter Coffee"> <input
						type="hidden" name="price" value="40">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>

		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/mango_0.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Mango Shake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Mango Shake"> <input
						type="hidden" name="price" value="70">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/Masala-Chai_0.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Masala Chai</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Masala Chai"> <input
						type="hidden" name="price" value="35">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter bev">
				<img src="images/products/Vegan-Shake_0.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Vegan Shake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Vegan Shake"> <input
						type="hidden" name="price" value="130">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-black-forest-cake.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Black forest cake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Black forest cake"> <input
						type="hidden" name="price" value="660">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-Black-Forest.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Dark Chocolate Cake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Dark Chocolate Cake"> <input
						type="hidden" name="price" value="550">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>


		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-Brownie.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Brownie</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Brownie"> <input
						type="hidden" name="price" value="120">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>


		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-Coco-Cake.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Coco Cake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Coco Cake"> <input
						type="hidden" name="price" value="350">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>

		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-Coco-Slice.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Coco Slice</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Coco Slice"> <input
						type="hidden" name="price" value="320">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-dutch-truffle-cake.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Dutch truffle cake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Dutch truffle cake"> <input
						type="hidden" name="price" value="480">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-Eclair.jpg" class="img-responsive" />
				<div style="text-align: center;">
					<h4>Eclair</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Eclair"> <input
						type="hidden" name="price" value="720">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>

		<form action="Order" method="post">
			<div
				class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter des">
				<img src="images/products/836x663-pineapple-cake.jpg"
					class="img-responsive" />
				<div style="text-align: center;">
					<h4>Pineapple cake</h4>
					Quantity <input type="number" name="quantity" value="1" max="4"
						min="1" style="width: 40px; margin-right: 5px;"> <input
						type="hidden" name="item" value="Pineapple cake"> <input
						type="hidden" name="price" value="380">
					<button class="btn btn-success" type="submit">Add to Cart</button>
				</div>
			</div>
		</form>


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
