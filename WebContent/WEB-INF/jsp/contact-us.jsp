<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	
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

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
	<!-- Loader -->
	<div id="site-loader" class="load-complete">
		<div class="loader">
			<div class="loader-inner ball-clip-rotate">
				<div></div>
			</div>
		</div>
	</div><!-- Loader /- -->
	
	<a id="top"></a>
	<!-- Main Container -->
	<div class="main-container">
	<!-- Header -->
	<style>
@media screen and (min-device-width: 320px) and (max-device-width: 480px) {

.modal-dialog{
	width:300px!important;
}

.logo_model{
	margin-top: -10px!important;
	width: 250px!important;
}


}
.modal-dialog{
	width:450px;
}
.logo_model{
	margin-top:-50px;
	width: 200px;
}
</style>
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
				<!--a href="registration.html">Book For A Ride</a-->
			</div>
		</nav>
		  
	</header><!-- Header /- -->
	
	<!-- Banner Section -->
	<div id="page-banner" class="page-banner faq-banner container-fluid no-padding">
		<div class="page-heading">
			<h3>Contact Us</h3>
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active"><a href="#">Contact</a></li>
			</ol>
		</div>
	</div><!-- Banner Section /- -->
	
	<!-- contact map /- -->
	<div class="map">
	<div class="map-canvas" id="map-canvas-contact" data-lat="45.423106" data-lng="-75.683133" data-string="<div class='content'><h3>Let Us Talk ToGether</h3><div><img src='${images}/icon/map-lc.png' alt='map-lc' /> <p>University of ottawa,</p><p>(75 Laurier Avenue E, Ottawa, ON K1N 6N5)</p></div><div><img src='${images}/icon/map-ph.png' alt='map-ph' /> <p>(01) 987 654 32 1</p><p>(01) 123 456 78 9</p></div><div><img src='${images}/icon/map-mail.png' alt='map-mail' /> <a href='mailto:info@company.com'>info@company.com</a><a href='mailto:support@company.com'>Support@company.com</a></p></div></div>" data-zoom="12"></div>
		<!-- contact map /- -->
		<!--img src="${images}/map.png" style="width:100%;" /-->
	</div>
	
	<!-- Contact Form -->
	<div class="contact-form container-fluid no-padding">		
		<div class="section-padding"></div>
		<!-- Container -->
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<!-- Section Header -->
					<div class="section-header">
						<h3>Any Queries</h3>
					</div><!-- Section Header -->
					<p>That this group would somehow form a family that is the way we all became the brady bunch baby.</p>
					<p>Got kind of tired packin' and unpackin' - town to town and up and down the dial. Movin' on up to the east side. We finally got a piece of the pie.</p>
				</div>
				<div class="col-md-8 col-sm-12">
					<form class="row" id="contact-form" method="post">
						
						<div class="col-md-6 col-sm-6 form-group">
							<input type="email" class="form-control" id="input_email" name="contact-email" placeholder="E-mail Address" required>
						</div>
						<div class="col-md-6 col-sm-6 form-group">
							<input type="text" class="form-control" id="input_subject" name="contact-subject" placeholder="Subject" required>
						</div>
						<div class="col-md-12 col-sm-12 form-group">
							<textarea class="form-control" rows="8" cols="50" id="textarea_message" name="contact-message" placeholder="Message:" required></textarea>
						</div>
						<div class="col-md-12">
							<button type="submit" id="btn_submit" class="btn btn-default">Send Message</button>
						</div>
						<div id="alert-msg" class="alert-msg"></div>
					</form>
				</div>
			</div>
		</div><!-- Container /- -->
		<div class="section-padding"></div>
	</div><!-- Contact Form /- -->

	<footer class="footer-main">
		<!-- Container -->
		<div class="container">			
			<!--div class="col-md-4 col-sm-6">
				<aside class="widget widget-subscribe">
					<div class="subscribe-box">
						<h4>Subscribe To Mail!</h4>
						<p>Get our Daily email n.ewsletter with Special Services, Updates, Offers and more</p>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Email Address">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">SignUp</button>
							</span>
						</div>
					</div>
					<ul>
						<li><a href="#"><img src="${images}/icon/ftr-fb.png" alt="ftr" /></a></li>
						<li><a href="#"><img src="${images}/icon/ftr-g+.png" alt="ftr" /></a></li>
						<li><a href="#"><img src="${images}/icon/ftr-tumbler.png" alt="ftr" /></a></li>
						<li><a href="#"><img src="${images}/icon/ftr-dribbble.png" alt="ftr" /></a></li>
						<li><a href="#"><img src="${images}/icon/ftr-ln.png" alt="ftr" /></a></li>
						<li><a href="#"><img src="${images}/icon/ftr-tw.png" alt="ftr" /></a></li>
					</ul>
				</aside>
			</div-->
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
	
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDKBhIMLVadfnj8zj11l8UwoxxCQmNlNQ8&callback=initMap"></script>
	
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