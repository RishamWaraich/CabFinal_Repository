<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html> 
<head>
	<meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<title>Automated Taxi Service</title>

	<spring:url value="/resources/libraries/loader/loaders.min.css" var="cabLOADERSMIN" />
	<spring:url value="/resources/libraries/bootstrap/bootstrap.min.css" var="cabBOOTSRAPMIN" />
	<spring:url value="/resources/libraries/bootstrap/bootstrap-datetimepicker.min.css" var="cabBOOTSRAPDATEPICKER" />
	<spring:url value="/resources/libraries/owl-carousel/owl.carousel.css" var="cabOWLCAROUSEL" />
	<spring:url value="/resources/libraries/owl-carousel/owl.theme.css" var="cabOWLTHEME" />
	<spring:url value="/resources/libraries/flexslider/flexslider.css" var="cabFLEXSLIDER" />
	<spring:url value="/resources/libraries/animate/animate.min.css" var="cabANIMATEMIN" />
	<spring:url value="/resources/css/plugins.css" var="cabPLUGIN" />
	<spring:url value="/resources/css/navigation-menu.css" var="cabNAVIGARTION" />
	<spring:url value="/resources/style.css" var="cabSTYLE" />
	<spring:url value="/resources/css/shortcodes.css" var="cabSHORTCODE" />
	
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyDKBhIMLVadfnj8zj11l8UwoxxCQmNlNQ8"></script>
	
	<spring:url value="http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" var="cabGOOGLE1" />
	<spring:url value="https://fonts.googleapis.com/css?family=Oxygen:400,300,700" var="cabGOOGLE2" />
	<spring:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700" var="cabGOOGLE3" />
	<spring:url value="https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic" var="cabGOOGLE4" />
	<spring:url value="https://fonts.googleapis.com/css?family=Lato:400,100italic,100,300,300italic,400italic,700,700italic,900,900italic" var="cabGOOGLE5" />
	
	

	<link href="${cabLOADERSMIN}" rel="stylesheet" />
	<link href="${cabBOOTSRAPMIN}" rel="stylesheet" />
	<link href="${cabBOOTSRAPDATEPICKER}" rel="stylesheet" />
	<link href="${cabOWLCAROUSEL}" rel="stylesheet" />
	<link href="${cabOWLTHEME}" rel="stylesheet" />
	<link href="${cabFLEXSLIDER}" rel="stylesheet" />
	<link href="${cabANIMATEMIN}" rel="stylesheet" />
	<link href="${cabPLUGIN}" rel="stylesheet" />
	<link href="${cabNAVIGARTION}" rel="stylesheet" />
	<link href="${cabSTYLE}" rel="stylesheet" />
	<link href="${cabSHORTCODE}" rel="stylesheet" />
	<script src="${cabGOOGLE1}"></script>
	<script src="${cabGOOGLE2}"></script>
	<script src="${cabGOOGLE3}"></script>
	<script src="${cabGOOGLE4}"></script>
	<script src="${cabGOOGLE5}"></script>	
</head>
<body>
  
  
  <a id="top"></a>
	<!-- Main Container -->
	<div class="main-container">
	<!-- Header -->
	<header class="header-main">
		<!-- Top Header -->

		<!-- Logo Block -->
		<div class="middle-header container-fluid no-padding">
			<!-- Container -->
			<spring:url value="/resources/images" var="images" />
			<div class="container">
				<div class="col-md-4 logo-block pull-left">
					<a href="welcome">
						<img src="${images}/logo.png" style="margin-top:-40px;width: 250px;" alt="Logo" />
					</a> 
				</div>
				<!--div class="col-md-6 pull-right">
					<div class="location">
						<img src="${images}/icon/user.png" alt="Location" />
						<p>
							<span onclick="window.location='registration.jsp'" style="cursor:pointer" >Sign Up</span>
							<span data-toggle="modal" data-target="#myModal" style="cursor:pointer;margin-top:5px;" >Sign In</span>
						</p>
					</div>
				</div-->
			</div><!-- Container /- -->
		</div><!-- Logo Block /- -->
		<nav class="navbar ow-navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="navbar-brand logo-block">
						<a href="index.php">
							<img src="${images}/logo.png" style="margin-top:-30px;width: 250px;" alt="Logo" />
						</a>
					</div>
				</div>
				
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li id="index" ><a href="welcome">Home</a></li>
						<li id="about" ><a href="about">About Us</a></li>
						<li id="registration" ><a href="registration">Registration</a></li>
						<li id="contact" ><a href="contactus">Contact US</a></li>							
					</ul>						
				</div>
				<!--a href="registration.jsp">Book For A Ride</a-->
			</div>
		</nav>
		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
			<div style="" class="modal-dialog">
			
			  <!-- Modal content-->
			  <div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <div class="container" style="margin-bottom:15px;" >
						<div class="col-md-8 logo-block pull-left">
							<a href="#">
								<img class="logo_model" src="${images}/logo.png" alt="Logo" />
							</a> 
						</div>
						<div class="col-md-4 pull-right">
						</div>
					</div>
				</div>
				<div class="modal-body" style="margin-bottpm:40px;" >
						<h4>
							<span><i class="fa fa-lock" ></i> Sign In</span><br/>
						</h4>
						<form class="row" id="contact-form" method="post">
							<div class="col-md-12 col-sm-12 form-group">
								<label>Username</label>
								<input type="text" class="form-control" name="contact-name" placeholder="Username" required>
							</div>
							<div class="col-md-12 col-sm-12 form-group">
								<label>Password</label>
								<input type="password" class="form-control" name="contact-email" placeholder="Password" required>
							</div>
							<div style="margin-top:-5px;" class="col-md-12 col-sm-12 checkbox">
								<label><input type="checkbox"> Remember me</label><br/>
								<a href="" >Forgot Your password?</a>
							  </div>
							<div class="col-md-12">
								<button type="submit" id="btn_submit" class="btn btn-default">Login</button>
							</div>
							<div id="alert-msg" class="alert-msg"></div>
						</form>
				</div>
			  </div>
			  
			</div>
		  </div>
	</header><!-- Header /- -->
	
	 
	<!-- Banner Section -->
	
	<!--  <div id="page-banner" class="page-banner faq-banner container-fluid no-padding">
		<div class="page-heading">
			<h3>Welcome To Dashboard Section</h3>
			<ol class="breadcrumb">
				<li><a href="welcome">Home</a></li>
				<li class="active"><a href="#">Dashboard</a></li>
			</ol>
		</div>
	</div>-->
	
	<!-- Banner Section /- -->
	
	<!-- Faq Section -->
	<div id="faq-section" class="faq-section container-fluid no-padding">
		<!--  <div class="section-padding"></div>-->
		<!-- Container -->
		<div class="container">
			<!-- Widget Area -->
			<div class="col-md-3">
				
					<div class="section-header">
					
					<!--  <h3>Map View</h3>-->				
				</div>
				<ul class="archives-contnet">
					</span><li><a href="#"><span>1</span>My Trips</a></li>
					<li><a href="#"><span>2</span>Profile</a></li>
					<li><a href="#"><span>3</span>Payment</a></li>
					<li><a href="#"><span>4</span>Free Rides</a></li>
					<li><a href="#"><span>5</span>Logout</a></li>
					
				</ul>
			</div><!-- Widget Area/- -->
			<div class="col-md-9">
				<div class="section-header">
					<!--  <h3>Map View</h3>	-->			
				</div>
				<div>
					<div id="map" style="height: 600px;"></div>

				  <script type="text/javascript">
					var locations = [
					  ['Test Detail', 45.423106, -75.683133, 4],
					  ['Test Detail', 56.130366, -106.346771, 3],
					  ['Test Detail', 56.14784455, -106.41700745, 2],
					  ['Test Detail', 56.14937451,-106.26731873, 1]
					];

					var map = new google.maps.Map(document.getElementById('map'), {
					  zoom: 4,
					  center: new google.maps.LatLng(45.423106, -75.683133),
					  mapTypeId: google.maps.MapTypeId.ROADMAP
					});

					var infowindow = new google.maps.InfoWindow();

					var marker, i;

					for (i = 0; i < locations.length; i++) {  
					  marker = new google.maps.Marker({
						position: new google.maps.LatLng(locations[i][1], locations[i][2]),
						map: map
					  });

					  google.maps.event.addListener(marker, 'click', (function(marker, i) {
						return function() {
						  infowindow.setContent(locations[i][0]);
						  infowindow.open(map, marker);
						}
					  })(marker, i));
					}
				  </script>
				</div>			
			</div>
			
			
		</div><!-- Container /- -->
		<div class="section-padding"></div>
	</div><!-- Faq Section /- -->


	<footer class="footer-main">
		<!-- Container -->
		<div class="container">			
			
			<div class="col-md-6 col-sm-6">
				<aside class="widget widget-links">
					<h3 class="widget-title">We Glad To Offer</h3>
					<ul>
						<li><a href="#">24 / 7 Taxi Service To Any Where Around The City</a></li>
						<li><a href="#">Sending Taxi Booking Alert By SMS</a></li>
						<li><a href="#">GPS Tracking System For Location Guessing</a></li>
						<li><a href="#">Instant Printed Bills In Car On Departure</a></li>
						<li><a href="#">Magazine And News Papers For Reading On Ride</a></li>
						<li><a href="#">Credit And Debit Card Payment Available</a></li>
					</ul>
				</aside>
			</div>			
			<div class="col-md-6 col-sm-6">
				<aside class="widget widget-about">
					<h3 class="widget-title">about Us</h3>
					<p>Hello we are Comre. We are here to provide you the best offers through our coupons. Hello we are We are here to provide you coupons.</p>
					<ul>
						<li><img src="${images}/icon/ftr-location.png" alt="Address" />University of ottawa, <span>(75 Laurier Avenue E, Ottawa, ON K1N 6N5)</span></li>
						<li><img src="${images}/icon/ftr-customer.png" alt="Phone" /> Customer Support : <span>+ 124 45 76 678</span></li>
						<li><img src="${images}/icon/ftr-email.png" alt="Mail" /><span>Email :</span><a href="mailto:info@cab.com"> info@cab.com</a></li>
					</ul>
				</aside>
			</div>
		</div><!-- Container /- -->
	</footer>
		
	</div><!-- Main Container -->
	<spring:url value="/resources/js/jquery.min.js" var="cabJQUERYMIN" />
	<spring:url value="/resources/libraries/modernizr/modernizr.js" var="cabMODERNIZR" />
	<spring:url value="/resources/libraries/bootstrap/bootstrap.min.js" var="cabBOOTTSRAPJS" />
	<spring:url value="/resources/libraries/bootstrap/bootstrap-datetimepicker.min.js" var="cabBOOTSRAPDATEPICKERJS" />
	<spring:url value="/resources/js/jquery.easing.min.js" var="cabJQUERYRASIJS" />
	<spring:url value="/resources/libraries/appear/jquery.appear.js" var="cabJQUERYAPERJS" />
	<spring:url value="/resources/libraries/owl-carousel/owl.carousel.min.js" var="cabOWLCAROUSELJS" />
	<spring:url value="/resources/libraries/number/jquery.animateNumber.min.js" var="cabJQUERYANIMATE" />
	<spring:url value="/resources/libraries/flexslider/jquery.flexslider.js" var="cabFLEXSLIDERJS" />
	<spring:url value="/resources/js/functions.js" var="cabFUNCTION" />
	
	
	<script src="${cabJQUERYMIN}"></script>
	<script src="${cabMODERNIZR}"></script>
	<script src="${cabBOOTTSRAPJS}"></script>
	<script src="${cabBOOTSRAPDATEPICKERJS}"></script>
	<script src="${cabJQUERYRASIJS}"></script>
	<script src="${cabJQUERYAPERJS}"></script>
	<script src="${cabOWLCAROUSELJS}"></script>
	<script src="${cabJQUERYANIMATE}"></script>
	<script src="${cabMAP}"></script>
	<script src="${cabFLEXSLIDERJS}"></script>
	<script src="${cabFUNCTION}"></script>
</body>
	
</html>