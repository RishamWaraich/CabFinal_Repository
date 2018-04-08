<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>SecCharge</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- Pace -->
<link href="css/pace.css" rel="stylesheet">

<!-- Full Calendar -->
<link href='css/fullcalendar.css' rel='stylesheet' />

<!-- Endless -->
<link href="css/endless.min.css" rel="stylesheet">
<link href="css/endless-skin.css" rel="stylesheet">
<link href="css/toastr.css" rel="stylesheet">

<!-- Datatable -->
<link href="css/jquery.dataTables_themeroller.css" rel="stylesheet">

<!-- Chosen -->
<link href="css/chosen/chosen.min.css" rel="stylesheet" />

<link href="css/bootstrap-datetimepicker.min_.css" rel="stylesheet" />

<!-- Datepicker -->
<link href="css/datepicker.css" rel="stylesheet" />

<!-- Timepicker -->
<link href="css/bootstrap-timepicker.css" rel="stylesheet" />

<!-- Slider -->
<link href="css/slider.css" rel="stylesheet" />

<!-- Tag input -->
<link href="css/jquery.tagsinput.css" rel="stylesheet" />

<!-- WYSIHTML5 -->
<link href="css/bootstrap-wysihtml5.css" rel="stylesheet" />

<!-- Dropzone -->
<link href='css/dropzone/dropzone.css' rel="stylesheet" />


<link href='css/stylesheet.css' rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="//www.shieldui.com/shared/components/latest/css/shieldui-all.min.css" />
<link id="gridcss" rel="stylesheet" type="text/css"
	href="//www.shieldui.com/shared/components/latest/css/light-mint/all.min.css" />

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/sliderBar.min.css">


</head>

<body class="overflow-hidden">

	<!-- Overlay Div -->
	<div id="overlay" class="transparent"></div>

	<a href="" id="theme-setting-icon" class="hidden-print"><i
		class="fa fa-cog fa-lg"></i></a>
	<div id="theme-setting" class="hidden-print">
		<div class="title">
			<strong class="no-margin">Skin Color</strong>
		</div>
		<div class="theme-box">
			<a class="theme-color" style="background: #323447" id="default"></a>
			<a class="theme-color" style="background: #efefef" id="skin-1"></a> <a
				class="theme-color" style="background: #a93922" id="skin-2"></a> <a
				class="theme-color" style="background: #3e6b96" id="skin-3"></a> <a
				class="theme-color" style="background: #635247" id="skin-4"></a> <a
				class="theme-color" style="background: #3a3a3a" id="skin-5"></a> <a
				class="theme-color" style="background: #495B6C" id="skin-6"></a>
		</div>
		<div class="title">
			<strong class="no-margin">Sidebar Menu</strong>
		</div>
		<div class="theme-box">
			<label class="label-checkbox" > 
				<input type="checkbox" checked id="fixedSidebar" > 
					<span class="custom-checkbox"></span>
				Fixed Sidebar
			</label>
		</div>
	</div>
	<!-- /theme-setting -->

	<div id="wrapper" class="bg-white preload">
		<div id="top-nav" class="skin-6 fixed">
			<div class="brand">
				<a href="<c:url value="/" />" style="color: #fff"><span>SecCharge</span></a>
				<a href="<c:url value="/" />" style="color: #fff"><span
					class="text-toggle" style="color: #fff">.com</span></a>

			</div>
			<!-- /brand -->
			<button type="button" class="navbar-toggle pull-left"
				id="sidebarToggle">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<button type="button" class="navbar-toggle pull-left hide-menu"
				id="menuToggle">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<ul class="nav-notification clearfix">
				<li>
					<a href = "#underCon" data-toggle="modal">
						<div id="battery_icon" class="slider_2 sliderBar pull-right" style="height: 30px; width: 15px;">
						</div>
					</a>
				</li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-calendar fa-lg"></i> <span
						class="notification-label bounceIn animation-delay4">2</span>
				</a>
					<ul class="dropdown-menu message dropdown-1">
						<li><a>You have 2 reservations </a></li>
						<li><a class="clearfix" href="#"> <img
								src="img/blink.jpg" alt="User Avatar">
								<div class="detail">
									<strong> MOUNTAIN COOP </strong>
									<p class="no-margin">366 Richmond Rd, Ottawa, Ontario...</p>
									<small class="text-danger"><i class="fa fa-calendar"></i>
										Tomorrow </small>
								</div>
						</a></li>
						<li><a class="clearfix" href="#"> <img
								src="img/ev ch.JPG" alt="User Avatar">
								<div class="detail">
									<strong> MORGUARD 1 </strong>
									<p class="no-margin">150 Elgin St Ottawa, Ontario...</p>
									<small class="text-muted"><i class="fa fa-calendar"></i>
										9 May 2015</small>
								</div>
						</a></li>
						<li><a href="<c:url value="/reservation" />">View all
								reservations</a></li>
					</ul></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-car fa-lg"></i>
						<span class="notification-label bounceIn animation-delay6">5</span>
				</a>
					<ul class="dropdown-menu notification dropdown-3">
						<li><a href="#">You have 5 new notifications</a></li>
						<li><a href="#"> <span
								class="notification-icon bg-danger"> <i
									class="fa fa-bolt"></i>
							</span> <span class="m-left-xs">Charging Interuppted.</span> <span
								class="time text-muted">5m ago</span>
						</a></li>
						<li><a href="#"> <span
								class="notification-icon bg-success"> <i
									class="fa fa-check"></i>
							</span> <span class="m-left-xs">Battery Fully Charged.</span> <span
								class="time text-muted">7m ago</span>
						</a></li>
						<li><a href="#"> <span class="notification-icon bg-info">
									<i class="fa fa-bolt"></i>
							</span> <span class="m-left-xs">Charging Start.</span> <span
								class="time text-muted">1hr ago</span>
						</a></li>
						<li><a href="#"> <span
								class="notification-icon bg-success"> <i
									class="fa fa-usd"></i>
							</span> <span class="m-left-xs">Transaction Approved.</span> <span
								class="time text-muted">1hr ago</span>
						</a></li>
						<li><a href="#"> <span
								class="notification-icon bg-warning"> <i
									class="fa fa-warning"></i>
							</span> <span class="m-left-xs">EV Plugged In.</span> <span
								class="time text-muted">1hr ago</span>
						</a></li>
						<li><a href="#">View all notifications</a></li>
					</ul></li>

				<li class="dropdown hidden-xs"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-tasks fa-lg"></i> <!--<span class="notification-label bounceIn animation-delay5">1</span>-->
				</a>
					<ul class="dropdown-menu task dropdown-2">
						<li><a href="#">Current Charging Session</a></li>

						<li><a href="#">
								<div class="clearfix">
									<span class="pull-left"> No Active Charging Session </span> <small
										class="pull-right text-muted">0%</small>
								</div>
								<div class="progress">
									<div class="progress-bar progress-bar-warning"
										style="width: 0%"></div>
								</div>
						</a></li>
						<li><a href="#">
								<div class="clearfix">
									<span class="pull-left">Battery Charging</span> <small
										class="pull-right text-muted">87%</small>
								</div>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-info " style="width: 87%"></div>
								</div>
						</a></li>
						<!--<li><a href="#">View all tasks</a></li>-->
					</ul></li>

				<li class="profile dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <strong>${currentUser.username}</strong>
						<span><i class="fa fa-chevron-down"></i></span>
				</a>
					<ul class="dropdown-menu">
						<li><a class="clearfix" href="#"> <img src="img/gh.jpg"
								alt="User Avatar">
								<div class="detail">
									<strong>${currentUser.username}</strong>
									<p class="grey">${currentUser.userMetadata.email}</p>
								</div>
						</a></li>
						<li><a tabindex="-1" href="<c:url value="/userprofile" />"
							class="main-link"><i class="fa fa-edit fa-lg"></i> Edit
								profile</a></li>
						<!--<li><a tabindex="-1" href="gallery.html" class="main-link"><i class="fa fa-picture-o fa-lg"></i> Photo Gallery</a></li>-->
						<li><a tabindex="-1" href="#underCon" class="theme-setting" data-toggle="modal"><i
								class="fa fa-cog fa-lg"></i> Settings</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" class="main-link logoutConfirm_open"
							href="#logoutConfirm"><i class="fa fa-lock fa-lg"></i> Log
								out</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /top-nav-->

<div class="modal fade" id="underCon">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<h2><b>Under Construction, please visit us back. </b></h2>
					
				</div>
				<!-- /panel -->
			</div>
			<!-- /login-widget -->
		</div>
		<!-- /login-wrapper -->
	</div>
	
		<aside class="fixed skin-6">
			<div class="sidebar-inner scrollable-sidebar">
				<div class="size-toggle">
					<a class="btn btn-sm" id="sizeToggle"> <span class="icon-bar"></span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="btn btn-sm pull-right logoutConfirm_open"
						href="#logoutConfirm"> <i class="fa fa-power-off"></i>
					</a>
				</div>
				<!-- /size-toggle -->
				<div class="user-block clearfix">
					<img src="img/gh.jpg" alt="User Avatar">
					<div class="detail">
						<strong>${user.userMetadata.firstName}
							${user.userMetadata.lastName}</strong>
						<!-- <span class="badge badge-danger bounceIn animation-delay4 m-left-xs">4</span>-->
						<ul class="list-inline">
							<li><a href="<c:url value="/userprofile" />">Profile</a></li>
							<li><a href="inbox.html" class="no-margin">Inbox</a></li>
						</ul>
					</div>
				</div>
				<!-- /user-block -->
				<div class="search-block">
					<div class="input-group">
						<input type="text" class="form-control input-sm"
							placeholder="Enter address..."> <span
							class="input-group-btn">
							<button class="btn btn-default btn-sm" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
				<!-- /search-block -->
				<div class="main-menu">
					<ul>
						<li><a href="<c:url value="/searchStation" />"> <span
								class="menu-icon"> <i class="fa fa-desktop fa-lg"></i>
							</span> <span class="text"> Charging Stations </span> <span
								class="menu-hover"></span>
						</a></li>
						<li
							class="${tab =='userprofile'?'active openable open':'openable'}">
							<a href="#"> <span class="menu-icon"> <i
									class="fa fa-file-text fa-lg"></i>
							</span> <span class="text"> My Account </span> <span class="menu-hover"></span>
						</a>
							<ul class="submenu">
								<!--<li><a href="login.html"><span class="submenu-label">Sign in</span></a></li>
                            <li><a href="register.html"><span class="submenu-label">Sign up</span></a></li>
                            <li><a href="lock_screen.html"><span class="submenu-label">Lock Screen</span></a></li>-->
								<li><a href="<c:url value="/userprofile" />"><span
										class="submenu-label">Profile</span></a></li>
								<li><a href="<c:url value="/soc" />"><span
										class="submenu-label">Current State of Charge</span></a></li>

								<!--<li><a href="landing.html"><span class="submenu-label">Landing</span></a></li>
                            <li class="active"><a href="search_result.html"><span class="submenu-label">Search Result</span></a></li>
                            <li><a href="chat.html"><span class="submenu-label">Chat Room</span></a></li>
                            <li><a href="movie.html"><span class="submenu-label">Movie Gallery</span></a></li>
                            <li><a href="pricing.html"><span class="submenu-label">Pricing</span></a></li>-->
								<li><a href="<c:url value="/invoice" />"><span
										class="submenu-label">Transactions <span
											class="badge badge-success bounceIn animation-delay5">9</span></span></a></li>
								<!--<li><a href="faq.html"><span class="submenu-label">FAQ</span></a></li>
                            <li><a href="contact.html"><span class="submenu-label">Contact</span></a></li>
                            <li><a href="error404.html"><span class="submenu-label">Error404</span></a></li>
                            <li><a href="error500.html"><span class="submenu-label">Error500</span></a></li>
                            <li><a href="blank.html"><span class="submenu-label">Blank</span></a></li>-->
							</ul>
						</li>
						<!--  <li class="${reserveMenu}">
						<a href="#">
								<span class="menu-icon">
									<i class="fa fa-tag fa-lg"></i>
								</span>
								<span class="text">
									Reserve
								</span>
							
							<span class="menu-hover"></span>
						</a>
						<ul class="submenu">
							<!-- <li><a href="<c:url value="/reserve" />"><span class="submenu-label">New Reservations</span></a></li>  -->
						<!--  <li><a href="<c:url value="/reservation" />" ><span class="submenu-label">My Reservations <span class="badge badge-danger bounceIn animation-delay4 m-left-xs">2</span></span></a></li>
						</ul>-->




						<li><a href="<c:url value="/viewReserve"/>"> <span
								class="menu-icon"> <i class="fa fa-desktop fa-lg"></i>
							</span> <span class="text"> Reserve </span> <span class="menu-hover"></span>
						</a></li>



						<li><a href="<c:url value="/showprices" />"><span
								class="menu-icon"> <i class="fa fa-bolt fa-lg"></i>
							</span> <span class="text"> Electricity Prices </span></a></li>
						<%-- <li><a href="<c:url value="/bulkupdate" />"><span
								class="menu-icon"> <i class="fa fa-upload fa-lg"></i>
							</span> <span class="text"> Bulk Upload Prices </span></a></li> --%>

						<li><a href="<c:url value="/planRoute" />"> <span
								class="menu-icon"> <i class="fa fa-clock-o fa-lg"></i>
							</span> <span class="text"> Trip Planner </span> <span
								class="menu-hover"></span>
						</a></li>
						<li><a href="<c:url value="/startCharging" />"> <span
								class="menu-icon"> <i class="fa fa-plug fa-lg"></i>
							</span> <span class="text"> Start Charging </span> <span
								class="menu-hover"></span>
						</a></li>
						<li><a href="<c:url value="/startDisCharging" />"> <span
								class="menu-icon"> <i class="fa fa-plug fa-lg"></i>
							</span> <span class="text"> Discharge At Home </span> <span
								class="menu-hover"></span>
						</a></li>
						<li><a href="<c:url value="/batteryStatus2" />"> 
							 <!-- <input type="hidden" name="charging"
								value="start" id="start1"> -->
								<span class="menu-icon"> <i class="fa fa-desktop fa-lg"></i>
							</span> <span class="text"> Meter Values </span> <span class="menu-hover"></span>
						</a></li>
						<li><a href="<c:url value="/peakTimes" />"> <span
								class="menu-icon"> <i class="fa fa-bolt fa-lg"></i>
							</span> <span class="text"> Peak Times </span> <span
								class="menu-hover"></span>
						</a></li>
						<li><a href="<c:url value="/automatedPlanRoute" />"> <span
								class="menu-icon"> <i class="fa fa-clock-o fa-lg"></i>
							</span> <span class="text"> Automated Trip Planner </span> <span
								class="menu-hover"></span>
						</a></li>
						<li><a href="<c:url value="/rough" />"> <span
								class="menu-icon"> <i class="fa fa-clock-o fa-lg"></i>
							</span> <span class="text"> Automated Trip Planner Rough </span> <span
								class="menu-hover"></span>
						</a></li>
						
				</div>
				<!-- /main-menu -->
			</div>
			<!-- /sidebar-inner scrollable-sidebar -->
		</aside>
	
		<!-- Jquery -->
		<script src="js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript">
		
		$('#fixedSidebar').click(function(){
			
			if(this.checked){
				
				$('#underCon').modal('show');
			}
			else {	
	
				$('#underCon').modal('show');
				$('#fixedSidebar').prop('checked', true);
			}
			
		});
		
		
		
		
		/*
		
		This part of code was written by Armaan to automatically redirect the user to Confirm Reservation page
		(which is used to unlock the Emulator charging Port), Sarjak has commented it out because he added a button
		in viewReserve.jsp Page to Unlock the connector.
		Because of this change the ConfirmReservationView.jsp Page is not being used anymore.
		
		$(document)
		.ready(
				function repeatingpopup() {
					$
							.ajax({
								type : "GET",
								url : '<c:url value="/reservationPopUp/soc/getstatus" />',
								data : "{}",
								success : function(data) {
									if (data === "startofreservation") {
										clearInterval(timer);
										window.location = '<c:url value="/ConfirmReservation"/>';
										clearInterval(timer);
									}
								},
								error : function(xhr, ajaxOptions,
										thrownError) {
									alert(' Server is down! ');
								}
							});
					
				});
		var timer = setInterval(function() {
			repeatingpopup();
		}, 10000); */
		
		</script>