<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	
	<title>日志文件概略 - LogANSYS</title>

	<link rel="stylesheet" href="./assets/css/css.css">
	<link rel="stylesheet" href="./assets/css/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="./assets/css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./assets/css/bootstrap.css">
	<link rel="stylesheet" href="./assets/css/xenon-core.css">
	<link rel="stylesheet" href="./assets/css/xenon-forms.css">
	<link rel="stylesheet" href="./assets/css/xenon-components.css">
	<link rel="stylesheet" href="./assets/css/xenon-skins.css">
	<link rel="stylesheet" href="./assets/css/custom.css">

	<script src="./assets/js/jquery-1.11.1.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	
</head>
<body class="page-body">

	<div class="settings-pane">
			
		<a href="#" data-toggle="settings-pane" data-animate="true">
			&times;
		</a>
		
		<div class="settings-pane-inner">
			
			<div class="row">
				
				<div class="col-md-4">
					
					<div class="user-info">
						
						<div class="user-image">
							<a href="extra-profile.html">
								<img src="assets/images/user-2.png" class="img-responsive img-circle" />
							</a>
						</div>
						
						<div class="user-details">
							
							<h3>
								<a href="extra-profile.html">John Smith</a>
								
								<!-- Available statuses: is-online, is-idle, is-busy and is-offline -->
								<span class="user-status is-online"></span>
							</h3>
							
							<p class="user-title">Web Developer</p>
							
							<div class="user-links">
								<a href="extra-profile.html" class="btn btn-primary">Edit Profile</a>
								<a href="extra-profile.html" class="btn btn-success">Upgrade</a>
							</div>
							
						</div>
						
					</div>
					
				</div>
				
				<div class="col-md-8 link-blocks-env">
					
					<div class="links-block left-sep">
						<h4>
							<span>Notifications</span>
						</h4>
						
						<ul class="list-unstyled">
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk1" />
								<label for="sp-chk1">Messages</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk2" />
								<label for="sp-chk2">Events</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk3" />
								<label for="sp-chk3">Updates</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk4" />
								<label for="sp-chk4">Server Uptime</label>
							</li>
						</ul>
					</div>
					
					<div class="links-block left-sep">
						<h4>
							<a href="#">
								<span>Help Desk</span>
							</a>
						</h4>
						
						<ul class="list-unstyled">
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Support Center
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Submit a Ticket
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Domains Protocol
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Terms of Service
								</a>
							</li>
						</ul>
					</div>
					
				</div>
				
			</div>
		
		</div>
		
	</div>
	
	<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->
			
		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<div class="sidebar-menu toggle-others fixed">
			
			<div class="sidebar-menu-inner">	
				
				<header class="logo-env">
					
					<!-- logo -->
					<div class="logo">
						<a href="dashboard-1.html" class="logo-expanded">
							<img src="assets/images/logo@2x.png" width="80" alt="" />
						</a>
						
						<a href="dashboard-1.html" class="logo-collapsed">
							<img src="assets/images/logo-collapsed@2x.png" width="40" alt="" />
						</a>
					</div>
					
					<!-- This will toggle the mobile menu and will be visible only on mobile devices -->
					<div class="mobile-menu-toggle visible-xs">
						<a href="#" data-toggle="user-info-menu">
							<i class="fa-bell-o"></i>
							<span class="badge badge-success">7</span>
						</a>
						
						<a href="#" data-toggle="mobile-menu">
							<i class="fa-bars"></i>
						</a>
					</div>
					
					<!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
					<div class="settings-icon">
						<a href="#" data-toggle="settings-pane" data-animate="true">
							<i class="linecons-cog"></i>
						</a>
					</div>
					
								
				</header>
						
				
						
				<ul id="main-menu" class="main-menu">
					<!-- add class "multiple-expanded" to allow multiple submenus to open -->
					<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
					<li class="active opened active expanded has-sub">
						<a href="dashboard-1.html">
							<i class="linecons-cog"></i>
							<span class="title">仪表盘</span>
						</a>
						<ul>
							<li class="active">
								<a href="overview">
									<span class="title">日志文件概略</span>
								</a>
							</li>
							<li>
								<a href="dashboard-2.html">
									<span class="title">Dashboard 2</span>
								</a>
							</li>
							<li>
								<a href="dashboard-3.html">
									<span class="title">Dashboard 3</span>
								</a>
							</li>
							<li>
								<a href="dashboard-4.html">
									<span class="title">Dashboard 4</span>
								</a>
							</li>
							<li>
								<a href="skin-generator.html">
									<span class="title">Skin Generator</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="layout-variants.html">
							<i class="linecons-desktop"></i>
							<span class="title">Layouts</span>
						</a>
						<ul>
							<li>
								<a href="layout-variants.html">
									<span class="title">Layout Variants &amp; API</span>
								</a>
							</li>
							<li>
								<a href="layout-collapsed-sidebar.html">
									<span class="title">Collapsed Sidebar</span>
								</a>
							</li>
							<li>
								<a href="layout-static-sidebar.html">
									<span class="title">Static Sidebar</span>
								</a>
							</li>
							<li>
								<a href="layout-horizontal-menu.html">
									<span class="title">Horizontal Menu</span>
								</a>
							</li>
							<li>
								<a href="layout-horizontal-plus-sidebar.html">
									<span class="title">Horizontal &amp; Sidebar Menu</span>
								</a>
							</li>
							<li>
								<a href="layout-horizontal-menu-click-to-open-subs.html">
									<span class="title">Horizontal Open On Click</span>
								</a>
							</li>
							<li>
								<a href="layout-horizontal-menu-min.html">
									<span class="title">Horizontal Menu Minimal</span>
								</a>
							</li>
							<li>
								<a href="layout-right-sidebar.html">
									<span class="title">Right Sidebar</span>
								</a>
							</li>
							<li>
								<a href="layout-chat-open.html">
									<span class="title">Chat Open</span>
								</a>
							</li>
							<li>
								<a href="layout-horizontal-sidebar-menu-collapsed-right.html">
									<span class="title">Both Menus &amp; Collapsed</span>
								</a>
							</li>
							<li>
								<a href="layout-boxed.html">
									<span class="title">Boxed Layout</span>
								</a>
							</li>
							<li>
								<a href="layout-boxed-horizontal-menu.html">
									<span class="title">Boxed &amp; Horizontal Menu</span>
								</a>
							</li>
							<li>
								<a href="http://www.cssmoban.com">
									<span class="title">weidea.net</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="ui-panels.html">
							<i class="linecons-note"></i>
							<span class="title">UI Elements</span>
						</a>
						<ul>
							<li>
								<a href="ui-panels.html">
									<span class="title">Panels</span>
								</a>
							</li>
							<li>
								<a href="ui-buttons.html">
									<span class="title">Buttons</span>
								</a>
							</li>
							<li>
								<a href="ui-tabs-accordions.html">
									<span class="title">Tabs &amp; Accordions</span>
								</a>
							</li>
							<li>
								<a href="ui-modals.html">
									<span class="title">Modals</span>
								</a>
							</li>
							<li>
								<a href="ui-breadcrumbs.html">
									<span class="title">Breadcrumbs</span>
								</a>
							</li>
							<li>
								<a href="ui-blockquotes.html">
									<span class="title">Blockquotes</span>
								</a>
							</li>
							<li>
								<a href="ui-progressbars.html">
									<span class="title">Progress Bars</span>
								</a>
							</li>
							<li>
								<a href="ui-navbars.html">
									<span class="title">Navbars</span>
								</a>
							</li>
							<li>
								<a href="ui-alerts.html">
									<span class="title">Alerts</span>
								</a>
							</li>
							<li>
								<a href="ui-pagination.html">
									<span class="title">Pagination</span>
								</a>
							</li>
							<li>
								<a href="ui-typography.html">
									<span class="title">Typography</span>
								</a>
							</li>
							<li>
								<a href="ui-other-elements.html">
									<span class="title">Other Elements</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="">
						<a href="ui-widgets.html">
							<i class="linecons-star"></i>
							<span class="title">Widgets</span>
						</a>
					</li>
					<li>
						<a href="mailbox-main.html">
							<i class="linecons-mail"></i>
							<span class="title">Mailbox</span>
							<span class="label label-success pull-right">5</span>
						</a>
						<ul>
							<li>
								<a href="mailbox-main.html">
									<span class="title">Inbox</span>
								</a>
							</li>
							<li>
								<a href="mailbox-compose.html">
									<span class="title">Compose Message</span>
								</a>
							</li>
							<li>
								<a href="mailbox-message.html">
									<span class="title">View Message</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="tables-basic.html">
							<i class="linecons-database"></i>
							<span class="title">Tables</span>
						</a>
						<ul>
							<li>
								<a href="tables-basic.html">
									<span class="title">Basic Tables</span>
								</a>
							</li>
							<li>
								<a href="tables-responsive.html">
									<span class="title">Responsive Table</span>
								</a>
							</li>
							<li>
								<a href="tables-datatables.html">
									<span class="title">Data Tables</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="forms-native.html">
							<i class="linecons-params"></i>
							<span class="title">Forms</span>
						</a>
						<ul>
							<li>
								<a href="forms-native.html">
									<span class="title">Native Elements</span>
								</a>
							</li>
							<li>
								<a href="forms-advanced.html">
									<span class="title">Advanced Plugins</span>
								</a>
							</li>
							<li>
								<a href="forms-wizard.html">
									<span class="title">Form Wizard</span>
								</a>
							</li>
							<li>
								<a href="forms-validation.html">
									<span class="title">Form Validation</span>
								</a>
							</li>
							<li>
								<a href="forms-input-masks.html">
									<span class="title">Input Masks</span>
								</a>
							</li>
							<li>
								<a href="forms-file-upload.html">
									<span class="title">File Upload</span>
								</a>
							</li>
							<li>
								<a href="forms-editors.html">
									<span class="title">Editors</span>
								</a>
							</li>
							<li>
								<a href="forms-sliders.html">
									<span class="title">Sliders</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="extra-gallery.html">
							<i class="linecons-beaker"></i>
							<span class="title">Extra</span>
							<span class="label label-purple pull-right hidden-collapsed">New Items</span>
						</a>
						<ul>
							<li>
								<a href="extra-icons-fontawesome.html">
									<span class="title">Icons</span>
									<span class="label label-warning pull-right">4</span>
								</a>
								<ul>
									<li>
										<a href="extra-icons-fontawesome.html">
											<span class="title">Font Awesome</span>
										</a>
									</li>
									<li>
										<a href="extra-icons-linecons.html">
											<span class="title">Linecons</span>
										</a>
									</li>
									<li>
										<a href="extra-icons-elusive.html">
											<span class="title">Elusive</span>
										</a>
									</li>
									<li>
										<a href="extra-icons-meteocons.html">
											<span class="title">Meteocons</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="extra-maps-google.html">
									<span class="title">Maps</span>
								</a>
								<ul>
									<li>
										<a href="extra-maps-google.html">
											<span class="title">Google Maps</span>
										</a>
									</li>
									<li>
										<a href="extra-maps-advanced.html">
											<span class="title">Advanced Map</span>
										</a>
									</li>
									<li>
										<a href="extra-maps-vector.html">
											<span class="title">Vector Map</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="extra-gallery.html">
									<span class="title">Gallery</span>
								</a>
							</li>
							<li>
								<a href="extra-calendar.html">
									<span class="title">Calendar</span>
								</a>
							</li>
							<li>
								<a href="extra-profile.html">
									<span class="title">Profile</span>
								</a>
							</li>
							<li>
								<a href="extra-login.html">
									<span class="title">Login</span>
								</a>
							</li>
							<li>
								<a href="extra-lockscreen.html">
									<span class="title">Lockscreen</span>
								</a>
							</li>
							<li>
								<a href="extra-login-light.html">
									<span class="title">Login Light</span>
								</a>
							</li>
							<li>
								<a href="extra-timeline.html">
									<span class="title">Timeline</span>
								</a>
							</li>
							<li>
								<a href="extra-timeline-center.html">
									<span class="title">Timeline Centerd</span>
								</a>
							</li>
							<li>
								<a href="extra-notes.html">
									<span class="title">Notes</span>
								</a>
							</li>
							<li>
								<a href="extra-image-crop.html">
									<span class="title">Image Crop</span>
								</a>
							</li>
							<li>
								<a href="extra-portlets.html">
									<span class="title">Portlets</span>
								</a>
							</li>
							<li>
								<a href="blank-sidebar.html">
									<span class="title">Blank Page</span>
								</a>
							</li>
							<li>
								<a href="extra-search.html">
									<span class="title">Search</span>
								</a>
							</li>
							<li>
								<a href="extra-invoice.html">
									<span class="title">Invoice</span>
								</a>
							</li>
							<li>
								<a href="extra-not-found.html">
									<span class="title">404 Page</span>
								</a>
							</li>
							<li>
								<a href="extra-tocify.html">
									<span class="title">Tocify</span>
								</a>
							</li>
							<li>
								<a href="extra-loader.html">
									<span class="title">Loading Progress</span>
								</a>
							</li>
							<li>
								<a href="extra-page-loading-ol.html">
									<span class="title">Page Loading Overlay</span>
								</a>
							</li>
							<li>
								<a href="extra-notifications.html">
									<span class="title">Notifications</span>
								</a>
							</li>
							<li>
								<a href="extra-nestable-lists.html">
									<span class="title">Nestable Lists</span>
								</a>
							</li>
							<li>
								<a href="extra-scrollable.html">
									<span class="title">Scrollable</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="charts-main.html">
							<i class="linecons-globe"></i>
							<span class="title">Charts</span>
						</a>
						<ul>
							<li>
								<a href="charts-main.html">
									<span class="title">Chart Variants</span>
								</a>
							</li>
							<li>
								<a href="charts-range.html">
									<span class="title">Range Selector</span>
								</a>
							</li>
							<li>
								<a href="charts-sparklines.html">
									<span class="title">Sparklines</span>
								</a>
							</li>
							<li>
								<a href="charts-map.html">
									<span class="title">Map Charts</span>
								</a>
							</li>
							<li>
								<a href="charts-gauges.html">
									<span class="title">Circular Gauges</span>
								</a>
							</li>
							<li>
								<a href="charts-bar-gauges.html">
									<span class="title">Bar Gauges</span>
								</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">
							<i class="linecons-cloud"></i>
							<span class="title">Menu Levels</span>
						</a>
						<ul>
							<li>
								<a href="#">
									<i class="entypo-flow-line"></i>
									<span class="title">Menu Level 1.1</span>
								</a>
								<ul>
									<li>
										<a href="#">
											<i class="entypo-flow-parallel"></i>
											<span class="title">Menu Level 2.1</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="entypo-flow-parallel"></i>
											<span class="title">Menu Level 2.2</span>
										</a>
										<ul>
											<li>
												<a href="#">
													<i class="entypo-flow-cascade"></i>
													<span class="title">Menu Level 3.1</span>
												</a>
											</li>
											<li>
												<a href="#">
													<i class="entypo-flow-cascade"></i>
													<span class="title">Menu Level 3.2</span>
												</a>
												<ul>
													<li>
														<a href="#">
															<i class="entypo-flow-branch"></i>
															<span class="title">Menu Level 4.1</span>
														</a>
													</li>
												</ul>
											</li>
										</ul>
									</li>
									<li>
										<a href="#">
											<i class="entypo-flow-parallel"></i>
											<span class="title">Menu Level 2.3</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">
									<i class="entypo-flow-line"></i>
									<span class="title">Menu Level 1.2</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="entypo-flow-line"></i>
									<span class="title">Menu Level 1.3</span>
								</a>
							</li>
						</ul>
					</li>
				</ul>
						
			</div>
			
		</div>
		
		<div class="main-content">
					
			<!-- User Info, Notifications and Menu Bar -->
			<nav class="navbar user-info-navbar" role="navigation">
				
				<!-- Left links for user info navbar -->
				<ul class="user-info-menu left-links list-inline list-unstyled">
					
					<li class="hidden-sm hidden-xs">
						<a href="#" data-toggle="sidebar">
							<i class="fa-bars"></i>
						</a>
					</li>
					
					<li class="dropdown hover-line">
						<a href="#" data-toggle="dropdown">
							<i class="fa-envelope-o"></i>
							<span class="badge badge-green">15</span>
						</a>
							
						<ul class="dropdown-menu messages">
							<li>
									
								<ul class="dropdown-menu-list list-unstyled ps-scrollbar">
								
									<li class="active"><!-- "active" class means message is unread -->
										<a href="#">
											<span class="line">
												<strong>Luc Chartier</strong>
												<span class="light small">- yesterday</span>
											</span>
											
											<span class="line desc small">
												This ain’t our first item, it is the best of the rest.
											</span>
										</a>
									</li>
									
									<li class="active">
										<a href="#">
											<span class="line">
												<strong>Salma Nyberg</strong>
												<span class="light small">- 2 days ago</span>
											</span>
											
											<span class="line desc small">
												Oh he decisively impression attachment friendship so if everything. 
											</span>
										</a>
									</li>
									
									<li>
										<a href="#">
											<span class="line">
												Hayden Cartwright
												<span class="light small">- a week ago</span>
											</span>
											
											<span class="line desc small">
												Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
											</span>
										</a>
									</li>
									
									<li>
										<a href="#">
											<span class="line">
												Sandra Eberhardt
												<span class="light small">- 16 days ago</span>
											</span>
											
											<span class="line desc small">
												On so attention necessary at by provision otherwise existence direction.
											</span>
										</a>
									</li>
									
									<!-- Repeated -->
									
									<li class="active"><!-- "active" class means message is unread -->
										<a href="#">
											<span class="line">
												<strong>Luc Chartier</strong>
												<span class="light small">- yesterday</span>
											</span>
											
											<span class="line desc small">
												This ain’t our first item, it is the best of the rest.
											</span>
										</a>
									</li>
									
									<li class="active">
										<a href="#">
											<span class="line">
												<strong>Salma Nyberg</strong>
												<span class="light small">- 2 days ago</span>
											</span>
											
											<span class="line desc small">
												Oh he decisively impression attachment friendship so if everything. 
											</span>
										</a>
									</li>
									
									<li>
										<a href="#">
											<span class="line">
												Hayden Cartwright
												<span class="light small">- a week ago</span>
											</span>
											
											<span class="line desc small">
												Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
											</span>
										</a>
									</li>
									
									<li>
										<a href="#">
											<span class="line">
												Sandra Eberhardt
												<span class="light small">- 16 days ago</span>
											</span>
											
											<span class="line desc small">
												On so attention necessary at by provision otherwise existence direction.
											</span>
										</a>
									</li>
									
								</ul>
								
							</li>
							
							<li class="external">
								<a href="blank-sidebar.html">
									<span>All Messages</span>
									<i class="fa-link-ext"></i>
								</a>
							</li>
						</ul>
					</li>
					
					<li class="dropdown hover-line">
						<a href="#" data-toggle="dropdown">
							<i class="fa-bell-o"></i>
							<span class="badge badge-purple">7</span>
						</a>
							
						<ul class="dropdown-menu notifications">
							<li class="top">
								<p class="small">
									<a href="#" class="pull-right">Mark all Read</a>
									You have <strong>3</strong> new notifications.
								</p>
							</li>
							
							<li>
								<ul class="dropdown-menu-list list-unstyled ps-scrollbar">
									<li class="active notification-success">
										<a href="#">
											<i class="fa-user"></i>
											
											<span class="line">
												<strong>New user registered</strong>
											</span>
											
											<span class="line small time">
												30 seconds ago
											</span>
										</a>
									</li>
									
									<li class="active notification-secondary">
										<a href="#">
											<i class="fa-lock"></i>
											
											<span class="line">
												<strong>Privacy settings have been changed</strong>
											</span>
											
											<span class="line small time">
												3 hours ago
											</span>
										</a>
									</li>
									
									<li class="notification-primary">
										<a href="#">
											<i class="fa-thumbs-up"></i>
											
											<span class="line">
												<strong>Someone special liked this</strong>
											</span>
											
											<span class="line small time">
												2 minutes ago
											</span>
										</a>
									</li>
									
									<li class="notification-danger">
										<a href="#">
											<i class="fa-calendar"></i>
											
											<span class="line">
												John cancelled the event
											</span>
											
											<span class="line small time">
												9 hours ago
											</span>
										</a>
									</li>
									
									<li class="notification-info">
										<a href="#">
											<i class="fa-database"></i>
											
											<span class="line">
												The server is status is stable
											</span>
											
											<span class="line small time">
												yesterday at 10:30am
											</span>
										</a>
									</li>
									
									<li class="notification-warning">
										<a href="#">
											<i class="fa-envelope-o"></i>
											
											<span class="line">
												New comments waiting approval
											</span>
											
											<span class="line small time">
												last week
											</span>
										</a>
									</li>
								</ul>
							</li>
							
							<li class="external">
								<a href="#">
									<span>View all notifications</span>
									<i class="fa-link-ext"></i>
								</a>
							</li>
						</ul>
					</li>
					
				</ul>
				
				
				<!-- Right links for user info navbar -->
				<ul class="user-info-menu right-links list-inline list-unstyled">
					
					<li class="search-form"><!-- You can add "always-visible" to show make the search input visible -->
						
						<form method="get" action="extra-search.html">
							<input type="text" name="s" class="form-control search-field" placeholder="Type to search..." />
							
							<button type="submit" class="btn btn-link">
								<i class="linecons-search"></i>
							</button>
						</form>
						
					</li>
					
					<li class="dropdown user-profile">
						<a href="#" data-toggle="dropdown">
							<img src="assets/images/user-4.png" alt="user-image" class="img-circle img-inline userpic-32" width="28" />
							<span>
								Arlind Nushi
								<i class="fa-angle-down"></i>
							</span>
						</a>
						
						<ul class="dropdown-menu user-profile-menu list-unstyled">
							<li>
								<a href="#edit-profile">
									<i class="fa-edit"></i>
									New Post
								</a>
							</li>
							<li>
								<a href="#settings">
									<i class="fa-wrench"></i>
									Settings
								</a>
							</li>
							<li>
								<a href="#profile">
									<i class="fa-user"></i>
									Profile
								</a>
							</li>
							<li>
								<a href="#help">
									<i class="fa-info"></i>
									Help
								</a>
							</li>
							<li class="last">
								<a href="extra-lockscreen.html">
									<i class="fa-lock"></i>
									Logout
								</a>
							</li>
						</ul>
					</li>
					
					<li>
						<a href="#" data-toggle="chat">
							<i class="fa-comments-o"></i>
						</a>
					</li>
					
				</ul>
				
			</nav>
			<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">日志文件概略</h1>
					<p class="description">Log File Overview</p>
				</div>				
				<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="dashboard-1.html"><i class="fa-home"></i>Home</a>
						</li>
								<li class="active">
						
										<strong>日志文件概略</strong>
								</li>
								</ol>
								
				</div>
					
			</div>
			<%
List<String[]> list = (List<String[]>)application.getAttribute("logList");
String[] time = ((String[])application.getAttribute("time"));
String[] logFileInfo;
if(time[2] == null){
	time[2] = Long.toString(System.currentTimeMillis() - Long.parseLong(time[0]));
}


if(list != null){
%>
<%
logFileInfo = list.get(0);
%>
			<div class="list-group">
						<a href="#" class="list-group-item active">
							<h4 class="list-group-item-heading">上传文件名</h4>
							<p class="list-group-item-text"><%=logFileInfo[0] %></p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">上传时间</h4>
							<p class="list-group-item-text"><%=time[1] %></p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">日志起始时间</h4>
							<p class="list-group-item-text"><%=logFileInfo[1] %> 至 <%=logFileInfo[2] %></p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">Web平台</h4>
							<p class="list-group-item-text"><%=logFileInfo[3] %></p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">文件大小</h4>
							<p class="list-group-item-text"><%=logFileInfo[4] %></p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">请求数量</h4>
							<p class="list-group-item-text"><%=logFileInfo[5] %></p>
						</a>
						<a href="#" class="list-group-item">
							<h4 class="list-group-item-heading">处理用时</h4>
							<p class="list-group-item-text"><%=time[2] %>毫秒</p>
						</a>
					</div><%}%>
			<h3 class="text-gray">
				Counters <br />
				<small class="text-muted">From-to based counters who start counting once they appear on screen and they are all available in 15 color variants.</small>
			</h3>
			
			<!-- Xenon Counter Widget -->
			<div class="row">
				<div class="col-sm-3">
					
					<div class="xe-widget xe-counter" data-count=".num" data-from="0" data-to="99.9" data-suffix="%" data-duration="2">
						<div class="xe-icon">
							<i class="linecons-cloud"></i>
						</div>
						<div class="xe-label">
							<strong class="num">0.0%</strong>
							<span>Server uptime</span>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-counter xe-counter-blue" data-count=".num" data-from="1" data-to="117" data-suffix="k" data-duration="3" data-easing="false">
						<div class="xe-icon">
							<i class="linecons-user"></i>
						</div>
						<div class="xe-label">
							<strong class="num">1k</strong>
							<span>Users Total</span>
						</div>
					</div>
				
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-counter xe-counter-info" data-count=".num" data-from="1000" data-to="2470" data-duration="4" data-easing="true">
						<div class="xe-icon">
							<i class="linecons-camera"></i>
						</div>
						<div class="xe-label">
							<strong class="num">1000</strong>
							<span>New Daily Photos</span>
						</div>
					</div>
				
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-counter xe-counter-red" data-count=".num" data-from="0" data-to="57" data-prefix="-," data-suffix="%" data-duration="5" data-easing="true" data-delay="1">
						<div class="xe-icon">
							<i class="linecons-lightbulb"></i>
						</div>
						<div class="xe-label">
							<strong class="num">-,0%</strong>
							<span>Exchange Commission</span>
						</div>
					</div>
				
				</div>
			</div>
			
			
			<!-- Xenon Block Counter Widget -->
			<div class="row">
				<div class="col-sm-3">
				
					<div class="xe-widget xe-counter-block" data-count=".num" data-from="0" data-to="99.9" data-suffix="%" data-duration="2">
						<div class="xe-upper">
							
							<div class="xe-icon">
								<i class="linecons-cloud"></i>
							</div>
							<div class="xe-label">
								<strong class="num">0.0%</strong>
								<span>Server uptime</span>
							</div>
							
						</div>
						<div class="xe-lower">
							<div class="border"></div>
							
							<span>Result</span>
							<strong>78% Increase</strong>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
				
					<div class="xe-widget xe-counter-block xe-counter-block-purple" data-count=".num" data-from="0" data-to="512" data-duration="3">
						<div class="xe-upper">
							
							<div class="xe-icon">
								<i class="linecons-camera"></i>
							</div>
							<div class="xe-label">
								<strong class="num">0</strong>
								<span>Photos Taken</span>
							</div>
							
						</div>
						<div class="xe-lower">
							<div class="border"></div>
							
							<span>Increase</span>
							<strong>512 more photos</strong>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
				
					<div class="xe-widget xe-counter-block xe-counter-block-blue" data-suffix="k" data-count=".num" data-from="0" data-to="310" data-duration="4" data-easing="false">
						<div class="xe-upper">
							
							<div class="xe-icon">
								<i class="linecons-user"></i>
							</div>
							<div class="xe-label">
								<strong class="num">0k</strong>
								<span>Daily Visits</span>
							</div>
							
						</div>
						<div class="xe-lower">
							<div class="border"></div>
							
							<span>Bounce Rate</span>
							<strong>51.55%</strong>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
				
					<div class="xe-widget xe-counter-block xe-counter-block-orange">
						<div class="xe-upper">
							
							<div class="xe-icon">
								<i class="fa-life-ring"></i>
							</div>
							<div class="xe-label">
								<strong class="num">24/7</strong>
								<span>Live Support</span>
							</div>
							
						</div>
						<div class="xe-lower">
							<div class="border"></div>
							
							<span>Tickets Opened</span>
							<strong data-count="this" data-from="0" data-to="14215" data-duration="2">0</strong>
						</div>
					</div>
					
				</div>
			</div>
			
			
			<!-- Xenon Progress Counter Widget -->
			<div class="row">
				<div class="col-sm-3">
					
					<div class="xe-widget xe-progress-counter xe-progress-counter-pink" data-count=".num" data-from="0" data-to="12425" data-duration="2">
						
						<div class="xe-background">
							<i class="linecons-heart"></i>
						</div>
						
						<div class="xe-upper">
							<div class="xe-icon">
								<i class="linecons-heart"></i>
							</div>
							<div class="xe-label">
								<span>likes</span>
								<strong class="num">0</strong>
							</div>
						</div>
						
						<div class="xe-progress">
							<span class="xe-progress-fill" data-fill-from="0" data-fill-to="56" data-fill-unit="%" data-fill-property="width" data-fill-duration="2" data-fill-easing="true"></span>
						</div>
						
						<div class="xe-lower">
							<span>Likes p/ Month</span>
							<strong>41% more likes</strong>
						</div>
						
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-progress-counter xe-progress-counter-turquoise" data-count=".num" data-from="0" data-to="520" data-suffix="k" data-duration="3">
						
						<div class="xe-background">
							<i class="linecons-paper-plane"></i>
						</div>
						
						<div class="xe-upper">
							<div class="xe-icon">
								<i class="linecons-paper-plane"></i>
							</div>
							<div class="xe-label">
								<span>chat lines</span>
								<strong class="num">0</strong>
							</div>
						</div>
						
						<div class="xe-progress">
							<span class="xe-progress-fill" data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
						</div>
						
						<div class="xe-lower">
							<span>Chat lines p/ Month</span>
							<strong>82% more communication</strong>
						</div>
						
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-progress-counter xe-progress-counter-info" data-count=".num" data-from="0" data-to="289" data-suffix="k" data-duration="4">
						
						<div class="xe-background">
							<i class="linecons-music"></i>
						</div>
						
						<div class="xe-upper">
							<div class="xe-icon">
								<i class="linecons-music"></i>
							</div>
							<div class="xe-label">
								<span>audio views</span>
								<strong class="num">0</strong>
							</div>
						</div>
						
						<div class="xe-progress">
							<span class="xe-progress-fill" data-fill-from="0" data-fill-to="40" data-fill-unit="%" data-fill-property="width" data-fill-duration="4" data-fill-easing="true"></span>
						</div>
						
						<div class="xe-lower">
							<span>Audio views p/ Month</span>
							<strong>40% more coverage</strong>
						</div>
						
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-progress-counter xe-progress-counter-red" data-count=".num" data-from="46" data-to="27" data-duration="3">
						
						<div class="xe-background">
							<i class="linecons-calendar"></i>
						</div>
						
						<div class="xe-upper">
							<div class="xe-icon">
								<i class="linecons-calendar"></i>
							</div>
							<div class="xe-label">
								<span>appointments</span>
								<strong class="num">0</strong>
							</div>
						</div>
						
						<div class="xe-progress">
							<span class="xe-progress-fill" data-fill-from="89" data-fill-to="40" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
						</div>
						
						<div class="xe-lower">
							<span>Appointments p/ Month</span>
							<strong>-32% less this week</strong>
						</div>
						
					</div>
					
				</div>
			</div>
			
			
			<!-- Xenon Verical Counter -->
			<div class="row">
				<div class="col-sm-3">
					
					<div class="xe-widget xe-vertical-counter xe-vertical-counter-yellow" data-count=".num" data-from="0" data-to="128.4" data-decimal="," data-suffix="%" data-duration="2.5">
						<div class="xe-icon">
							<i class="linecons-videocam"></i>
						</div>
						
						<div class="xe-label">
							<strong class="num">0,0%</strong>
							<span>Video Views</span>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-vertical-counter xe-vertical-counter-danger" data-count=".num" data-from="0" data-to="67.9" data-decimal="," data-suffix="%" data-duration="3">
						<div class="xe-icon">
							<i class="linecons-doc"></i>
						</div>
						
						<div class="xe-label">
							<strong class="num">0,0%</strong>
							<span>Document Downloads</span>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-vertical-counter xe-vertical-counter-white" data-count=".num" data-from="0" data-to="128" data-duration="4">
						<div class="xe-icon">
							<i class="linecons-lightbulb"></i>
						</div>
						
						<div class="xe-label">
							<strong class="num">0</strong>
							<span>New Topics Published</span>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-vertical-counter xe-vertical-counter-primary" data-count=".num" data-from="0" data-to="442" data-suffix=" TB" data-duration="5">
						<div class="xe-icon">
							<i class="linecons-truck"></i>
						</div>
						
						<div class="xe-label">
							<strong class="num">0</strong>
							<span>Traffic Delivered</span>
						</div>
					</div>
					
				</div>
			</div>
			
			
			
			<h3 class="text-gray">
				Todos <br />
				<small class="text-muted">Example todo list widget with color 13 variants.</small>
			</h3>
			
			<!-- Xenon Todo List -->
			<div class="row">
				<div class="col-sm-3">
					
					<div class="xe-widget xe-todo-list">
						<div class="xe-header">
							<div class="xe-icon">
								<i class="fa-file-text-o"></i>
							</div>
							<div class="xe-label">
								<span>to do list</span>
								<strong>Tasks</strong>
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li class="done">
									<label>
										<input type="checkbox" class="cbr" checked />
										<span>Web Design</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr" />
										<span>Slicing</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr" />
										<span>WooCommerce</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr" />
										<span>Programming</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr" />
										<span>SEO Optimize</span>
									</label>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<input type="text" class="form-control" placeholder="Add task..." />
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-todo-list xe-todo-list-turquoise">
						<div class="xe-header">
							<div class="xe-icon">
								<i class="fa-file-text-o"></i>
							</div>
							<div class="xe-label">
								<span>to do list</span>
								<strong>Tasks</strong>
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li class="done">
									<label>
										<input type="checkbox" class="cbr cbr-turquoise" checked />
										<span>Web Design</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-turquoise" />
										<span>Slicing</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-turquoise" />
										<span>WooCommerce</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-turquoise" />
										<span>Programming</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-turquoise" />
										<span>SEO Optimize</span>
									</label>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<input type="text" class="form-control" placeholder="Add task..." />
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-todo-list xe-todo-list-pink">
						<div class="xe-header">
							<div class="xe-icon">
								<i class="fa-file-text-o"></i>
							</div>
							<div class="xe-label">
								<span>to do list</span>
								<strong>Tasks</strong>
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li class="done">
									<label>
										<input type="checkbox" class="cbr cbr-pink" checked />
										<span>Web Design</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-pink" />
										<span>Slicing</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-pink" />
										<span>WooCommerce</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-pink" />
										<span>Programming</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-pink" />
										<span>SEO Optimize</span>
									</label>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<input type="text" class="form-control" placeholder="Add task..." />
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-todo-list xe-todo-list-purple">
						<div class="xe-header">
							<div class="xe-icon">
								<i class="fa-file-text-o"></i>
							</div>
							<div class="xe-label">
								<span>to do list</span>
								<strong>Tasks</strong>
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li class="done">
									<label>
										<input type="checkbox" class="cbr cbr-purple" checked />
										<span>Web Design</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-purple" />
										<span>Slicing</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-purple" />
										<span>WooCommerce</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-purple" />
										<span>Programming</span>
									</label>
								</li>
								<li>
									<label>
										<input type="checkbox" class="cbr cbr-purple" />
										<span>SEO Optimize</span>
									</label>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<input type="text" class="form-control" placeholder="Add task..." />
						</div>
					</div>
					
				</div>
			</div>
			
			
			
			<h3 class="text-gray">
				Status Widget <br />
				<small class="text-muted">Auto-switch text status widget with control navigation with 3 color variants: Facebook, Twitter and Google, more can be created.</small>
			</h3>
			
			<!-- Xenon Status Widget -->
			<div class="row">
				<div class="col-sm-4">
					
					<div class="xe-widget xe-status-update" data-auto-switch="5">
						<div class="xe-header">
							<div class="xe-icon">
								<i class="fa-twitter"></i>
							</div>
							<div class="xe-nav">
								<a href="#" class="xe-prev">
									<i class="fa-angle-left"></i>
								</a>
								<a href="#" class="xe-next">
									<i class="fa-angle-right"></i>
								</a>
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li class="active">
									<span class="status-date">21 May</span>
									<p>Build your own Fake Twitter Post now! Check it out @ simitator.com #laborator #envato</p>
								</li>
								<li>
									<span class="status-date">18 April</span>
									<p> Micro-finance clean water sustainable future Oxfam protect. Enabler meaningful work change-makers.</p>
								</li>
								<li>
									<span class="status-date">08 March</span>
									<p>Fight against malnutrition Aga Khan Bloomberg, economic independence inspire breakthroughs benefit civil.</p>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<a href="#">
								<i class="fa-retweet"></i>
								Retweet
							</a>
						</div>
					</div>
					
				</div>
				<div class="col-sm-4">
					
					<div class="xe-widget xe-status-update xe-status-update-facebook" data-auto-switch="3">
						<div class="xe-header">
							<div class="xe-icon">
								<i class="fa-facebook"></i>
							</div>
							<div class="xe-nav">
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li>
									<span class="status-date">21 May</span>
									<p>Build your own Fake Twitter Post now! Check it out @ simitator.com #laborator #envato</p>
								</li>
								<li class="active">
									<span class="status-date">18 April</span>
									<p> Micro-finance clean water sustainable future Oxfam protect. Enabler meaningful work change-makers.</p>
								</li>
								<li>
									<span class="status-date">08 March</span>
									<p>Fight against malnutrition Aga Khan Bloomberg, economic independence inspire breakthroughs benefit civil.</p>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<a href="#">
								<i class="linecons-megaphone"></i>
								Share This
							</a>
						</div>
					</div>
					
				</div>
				<div class="col-sm-4">
					
					<div class="xe-widget xe-status-update xe-status-update-google-plus" data-auto-switch="0">
						<div class="xe-header">
							<div class="xe-icon">
								<i class="fa-google-plus"></i>
							</div>
							<div class="xe-nav">
								<a href="#" class="xe-prev">
									<i class="fa-angle-left"></i>
								</a>
								<a href="#" class="xe-next">
									<i class="fa-angle-right"></i>
								</a>
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li class="active">
									<span class="status-date">21 May</span>
									<p>Build your own Fake Twitter Post now! Check it out @ simitator.com #laborator #envato</p>
								</li>
								<li>
									<span class="status-date">18 April</span>
									<p> Micro-finance clean water sustainable future Oxfam protect. Enabler meaningful work change-makers.</p>
								</li>
								<li>
									<span class="status-date">08 March</span>
									<p>Fight against malnutrition Aga Khan Bloomberg, economic independence inspire breakthroughs benefit civil.</p>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<a href="#">
								<i class="linecons-thumbs-up"></i>
								+1 this post
							</a>
						</div>
					</div>
					
				</div>
			</div>
			
			
			
			<h3 class="text-gray">
				Single News <br />
				<small class="text-muted">Single image news widget with date on hover and gradient background.</small>
			</h3>
			
			<!-- Xenon Single News Widget -->
			<div class="row">
				<div class="col-sm-5">
					
					<div class="xe-widget xe-single-news">
						<div class="xe-image">
							<img src="assets/images/news-image-widget-2.png" class="img-responsive" />
							<span class="xe-gradient"></span>
						</div>
						
						<div class="xe-details">
							<div class="category">
								<a href="#">News</a>
							</div>
							
							<h3>
								<a href="#">More rain at salt flats delays racer's pursuit of land speed record</a>
							</h3>
							
							<time>Today, 03 October</time>
						</div>
					</div>
					
				</div>
				<div class="col-sm-4">
					
					<div class="xe-widget xe-single-news">
						<div class="xe-image">
							<img src="assets/images/news-image-widget-3.png" class="img-responsive" />
							<span class="xe-gradient"></span>
						</div>
						
						<div class="xe-details">
							<div class="category">
								<a href="#">Culture</a>
							</div>
							
							<h3>
								<a href="#">The world's best nightlife cities</a>
							</h3>
							
							<time>Wednesday, 30 August</time>
						</div>
					</div>
					
				</div>
				<div class="col-sm-3">
					
					<div class="xe-widget xe-single-news">
						<div class="xe-image">
							<img src="assets/images/news-image-widget-4.png" class="img-responsive" />
							<span class="xe-gradient"></span>
						</div>
						
						<div class="xe-details">
							<div class="category">
								<a href="#">Business</a>
							</div>
							
							<h3>
								<a href="#">We're at tipping point on climate</a>
							</h3>
							
							<time>Monday, 17 July</time>
						</div>
					</div>
					
				</div>
			</div>
			
			
			
			<h3 class="text-gray">
				Conversations <br />
				<small class="text-muted">Light comment listing widget in a flat style.</small>
			</h3>
			
			<!-- Xenon Conversations Widget -->
			<div class="row">
				<div class="col-sm-8">
					
					<div class="xe-widget xe-conversations">
						<div class="xe-bg-icon">
							<i class="linecons-comment"></i>
						</div>
						<div class="xe-header">
							<div class="xe-icon">						
								<i class="linecons-comment"></i>
							</div>
							<div class="xe-label">
								<h3>
									Conversations
									<small>Chatting arround</small>
								</h3>
							</div>
						</div>
						<div class="xe-body">
							
							<ul class="list-unstyled">
								<li>
									<div class="xe-comment-entry">
										<a href="#" class="xe-user-img">
											<img src="assets/images/user-2.png" class="img-circle" width="40" />
										</a>
										
										<div class="xe-comment">
											<a href="#" class="xe-user-name">
												<strong>Jack Gates</strong>
											</a>
											
											<p>In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. <br />Out interested acceptance our partiality affronting unpleasant why add. Esteem garden me...</p>
										</div>
									</div>
								</li>
								<li>
									<div class="xe-comment-entry">
										<a href="#" class="xe-user-img">
											<img src="assets/images/user-5.png" class="img-circle" width="40" />
										</a>
										
										<div class="xe-comment">
											<a href="#" class="xe-user-name">
												<strong>Arlind Nushi</strong>
												<span class="label label-secondary">5</span>
											</a>
											
											<p>Age sold some full like rich new. Amounted repeated as believed in confined juvenile.</p>
										</div>
									</div>
								</li>
								<li>
									<div class="xe-comment-entry">
										<a href="#" class="xe-user-img">
											<img src="assets/images/user-4.png" class="img-circle" width="40" />
										</a>
										
										<div class="xe-comment">
											<a href="#" class="xe-user-name">
												<strong>Bryan Green</strong>
											</a>
											
											<p>Stuff sight equal of my woody. Him children bringing goodness suitable she entirely put far daughter.</p>
										</div>
									</div>
								</li>
							</ul>
							
						</div>
						<div class="xe-footer">
							<a href="#">View All</a>
						</div>
					</div>
					
				</div>
			</div>
			
			
			
			<h3 class="text-gray">
				Weather Widget <br />
				<small class="text-muted">Animated weather background with daily and weekly forecast.</small>
			</h3>
			
			<!-- Xenon Weather Widget -->
			<div class="row">
				<div class="col-sm-8">
					
					<div class="xe-widget xe-weather">
						<div class="xe-background xe-background-animated">
							<img src="assets/images/clouds.png" />
						</div>
						
						<div class="xe-current-day">
							<div class="xe-now">
								<div class="xe-temperature">
									<div class="xe-icon">
										<i class="meteocons-cloud-moon"></i>
									</div>
									<div class="xe-label">
										Now
										<strong>21&deg;</strong>
									</div>
								</div>
								<div class="xe-location">
									<h4>San Francisco, USA</h4>
									<time>Today, 03 October</time>
								</div>
							</div>
							
							<div class="xe-forecast">
								<ul>
									<li>
										<div class="xe-forecast-entry">
											<time>11:00</time>
											<div class="xe-icon">
												<i class="meteocons-sunrise"></i>
											</div>
											<strong class="xe-temp">12&deg;</strong>
										</div>
									</li>
									<li>
										<div class="xe-forecast-entry">
											<time>12:00</time>
											<div class="xe-icon">
												<i class="meteocons-clouds-flash"></i>
											</div>
											<strong class="xe-temp">13&deg;</strong>
										</div>
									</li>
									<li>
										<div class="xe-forecast-entry">
											<time>13:00</time>
											<div class="xe-icon">
												<i class="meteocons-cloud-moon-inv"></i>
											</div>
											<strong class="xe-temp">16&deg;</strong>
										</div>
									</li>
									<li>
										<div class="xe-forecast-entry">
											<time>14:00</time>
											<div class="xe-icon">
												<i class="meteocons-eclipse"></i>
											</div>
											<strong class="xe-temp">19&deg;</strong>
										</div>
									</li>
									<li>
										<div class="xe-forecast-entry">
											<time>15:00</time>
											<div class="xe-icon">
												<i class="meteocons-rain"></i>
											</div>
											<strong class="xe-temp">21&deg;</strong>
										</div>
									</li>
									<li>
										<div class="xe-forecast-entry">
											<time>16:00</time>
											<div class="xe-icon">
												<i class="meteocons-cloud-sun"></i>
											</div>
											<strong class="xe-temp">25&deg;</strong>
										</div>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="xe-weekdays">
							<ul class="list-unstyled">
								<li>
									<div class="xe-weekday-forecast">
										<div class="xe-temp">21&deg;</div>
										<div class="xe-day">Monday</div>
										<div class="xe-icon">
											<i class="meteocons-windy-inv"></i>
										</div>
									</div>
								</li>
								<li>
									<div class="xe-weekday-forecast">
										<div class="xe-temp">23&deg;</div>
										<div class="xe-day">Tuesday</div>
										<div class="xe-icon">
											<i class="meteocons-sun"></i>
										</div>
									</div>
								</li>
								<li>
									<div class="xe-weekday-forecast">
										<div class="xe-temp">19&deg;</div>
										<div class="xe-day">Wednesday</div>
										<div class="xe-icon">
											<i class="meteocons-na"></i>
										</div>
									</div>
								</li>
								<li>
									<div class="xe-weekday-forecast">
										<div class="xe-temp">18&deg;</div>
										<div class="xe-day">Thursday</div>
										<div class="xe-icon">
											<i class="meteocons-windy"></i>
										</div>
									</div>
								</li>
								<li>
									<div class="xe-weekday-forecast">
										<div class="xe-temp">20&deg;</div>
										<div class="xe-day">Friday</div>
										<div class="xe-icon">
											<i class="meteocons-sun"></i>
										</div>
									</div>
								</li>
							</ul>
						</div>
						
					</div>
					
				</div>
			</div>
			
			
			
			<h3 class="text-gray">
				Map Stats <br />
				<small class="text-muted">Interactive vector map with markers and statistics.</small>
			</h3>
			
			<!-- Xenon Map Stats Widget -->
			<div class="row">
				<div class="col-sm-8">
					
					<script type="text/javascript">
						jQuery(document).ready(function($)
						{
							var map = $("#sample-map-widget");
							
							var gdpData = { "AF": 16.63, "AL": 11.58, "DZ": 158.97, "AO": 85.81, "AG": 1.1, "AR": 351.02, "AM": 8.83, "AU": 1219.72, "AT": 366.26, "AZ": 52.17, "BS": 7.54, "BH": 21.73, "BD": 105.4, "BB": 3.96, "BY": 52.89, "BE": 461.33, "BZ": 1.43, "BJ": 6.49, "BT": 1.4, "BO": 19.18, "BA": 16.2, "BW": 12.5, "BR": 2023.53, "BN": 11.96, "BG": 44.84, "BF": 8.67, "BI": 1.47, "KH": 11.36, "CM": 21.88, "CA": 1563.66, "CV": 1.57, "CF": 2.11, "TD": 7.59, "CL": 199.18, "CN": 5745.13, "CO": 283.11, "KM": 0.56, "CD": 12.6, "CG": 11.88, "CR": 35.02, "CI": 22.38, "HR": 59.92, "CY": 22.75, "CZ": 195.23, "DK": 304.56, "DJ": 1.14, "DM": 0.38, "DO": 50.87, "EC": 61.49, "EG": 216.83, "SV": 21.8, "GQ": 14.55, "ER": 2.25, "EE": 19.22, "ET": 30.94, "FJ": 3.15, "FI": 231.98, "FR": 2555.44, "GA": 12.56, "GM": 1.04, "GE": 11.23, "DE": 3305.9, "GH": 18.06, "GR": 305.01, "GD": 0.65, "GT": 40.77, "GN": 4.34, "GW": 0.83, "GY": 2.2, "HT": 6.5, "HN": 15.34, "HK": 226.49, "HU": 132.28, "IS": 12.77, "IN": 1430.02, "ID": 695.06, "IR": 337.9, "IQ": 84.14, "IE": 204.14, "IL": 201.25, "IT": 2036.69, "JM": 13.74, "JP": 5390.9, "JO": 27.13, "KZ": 129.76, "KE": 32.42, "KI": 0.15, "KR": 986.26, "UNDEFINED": 5.73, "KW": 117.32, "KG": 4.44, "LA": 6.34, "LV": 23.39, "LB": 39.15, "LS": 1.8, "LR": 0.98, "LY": 77.91, "LT": 35.73, "LU": 52.43, "MK": 9.58, "MG": 8.33, "MW": 5.04, "MY": 218.95, "MV": 1.43, "ML": 9.08, "MT": 7.8, "MR": 3.49, "MU": 9.43, "MX": 1004.04, "MD": 5.36, "MN": 5.81, "ME": 3.88, "MA": 91.7, "MZ": 10.21, "MM": 35.65, "NA": 11.45, "NP": 15.11, "NL": 770.31, "NZ": 138, "NI": 6.38, "NE": 5.6, "NG": 206.66, "NO": 413.51, "OM": 53.78, "PK": 174.79, "PA": 27.2, "PG": 8.81, "PY": 17.17, "PE": 153.55, "PH": 189.06, "PL": 438.88, "PT": 223.7, "QA": 126.52, "RO": 158.39, "RU": 1476.91, "RW": 5.69, "WS": 0.55, "ST": 0.19, "SA": 434.44, "SN": 12.66, "RS": 38.92, "SC": 0.92, "SL": 1.9, "SG": 217.38, "SK": 86.26, "SI": 46.44, "SB": 0.67, "ZA": 354.41, "ES": 1374.78, "LK": 48.24, "KN": 0.56, "LC": 1, "VC": 0.58, "SD": 65.93, "SR": 3.3, "SZ": 3.17, "SE": 444.59, "CH": 522.44, "SY": 59.63, "TW": 426.98, "TJ": 5.58, "TZ": 22.43, "TH": 312.61, "TL": 0.62, "TG": 3.07, "TO": 0.3, "TT": 21.2, "TN": 43.86, "TR": 729.05, "TM": 0, "UG": 17.12, "UA": 136.56, "AE": 239.65, "GB": 2258.57, "US": 14624.18, "UY": 40.71, "UZ": 37.72, "VU": 0.72, "VE": 285.21, "VN": 101.99, "YE": 30.02, "ZM": 15.69, "ZW": 5.57 };
							
							var vmap = map.vectorMap({
									map: 'world_mill_en',
									backgroundColor: '',
									regionStyle: {
									  initial: {
										"fill": '#fff',
										"fill-opacity": 0.2,
										"stroke": '',
										"stroke-width": .7,
										"stroke-opacity": .5
									  },
									  hover: {
										"fill-opacity": 1,
										"fill": "#ddd"
									  }
									},						
									markerStyle: {
										initial: {
											fill: '#fff',
											"stroke": "#fff",
											"stroke-width": 0,
											r: 2.5
										},
										selected: {
											fill: '#7c38bc',
											"stroke-width": 0
										}
									},
									markers: [
										{latLng: [42.58, 20.88], name: 'Kosovo'},
										{latLng: [40.71, -74.00], name: 'New York'},
										{latLng: [36.77, -119.41], name: 'California'},
										{latLng: [-22.90, -43.19], name: 'Rio De Janiero'},
										{latLng: [35.68, 139.69], name: 'Tokyo'},
										{latLng: [59.32, 18.06], name: 'Stockholm'},
										{latLng: [25.04, 55.18], name: 'Dubai'},
										{latLng: [51.50, -0.12], name: 'London'},
										{latLng: [-33.92, 18.42], name: 'Cape Town'},
									]
								});
							
						});
					</script>
					<div class="xe-widget xe-map-stats">
						<div class="xe-map">
							<div id="sample-map-widget"></div>
						</div>
						<div class="xe-details">
							<div class="xe-label">
								<h3>Top Destinations</h3>
								<p>3 month period</p>
							</div>
							
							<ul class="list-unstyled">
								<li>
									<div class="xe-map-data">
										<span class="label label-secondary">5k</span>
										<span class="xe-label">Los Angeles</span>
									</div>
								</li>
								<li>
									<div class="xe-map-data">
										<span class="label label-purple">2k</span>
										<span class="xe-label">Barcelona</span>
									</div>
								</li>
								<li>
									<div class="xe-map-data">
										<span class="label label-yellow">311</span>
										<span class="xe-label">Helsinki</span>
									</div>
								</li>
								<li>
									<div class="xe-map-data">
										<span class="label label-red">892</span>
										<span class="xe-label">Sao Paolo</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
			<!-- Main Footer -->
			<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
			<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
			<!-- Or class "fixed" to  always fix the footer to the end of page -->
			<footer class="main-footer sticky footer-type-1">
				
				<div class="footer-inner">
				
					<!-- Add your copyright text here -->
					<div class="footer-text">
						&copy; 2014 
						<strong>Xenon</strong> 
						More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
					</div>
					
					
					<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
					<div class="go-up">
					
						<a href="#" rel="go-top">
							<i class="fa-angle-up"></i>
						</a>
						
					</div>
					
				</div>
				
			</footer>
		</div>
		
			
		<!-- start: Chat Section -->
		<div id="chat" class="fixed">
			
			<div class="chat-inner">
			
				
				<h2 class="chat-header">
					<a href="#" class="chat-close" data-toggle="chat">
						<i class="fa-plus-circle rotate-45deg"></i>
					</a>
					
					Chat
					<span class="badge badge-success is-hidden">0</span>
				</h2>
				
				<script type="text/javascript">
				// Here is just a sample how to open chat conversation box
				jQuery(document).ready(function($)
				{
					var $chat_conversation = $(".chat-conversation");
					
					$(".chat-group a").on('click', function(ev)
					{
						ev.preventDefault();
						
						$chat_conversation.toggleClass('is-open');
						
						$(".chat-conversation textarea").trigger('autosize.resize').focus();
					});
					
					$(".conversation-close").on('click', function(ev)
					{
						ev.preventDefault();
						$chat_conversation.removeClass('is-open');
					});
				});
				</script>
				
				
				<div class="chat-group">
					<strong>Favorites</strong>
					
					<a href="#"><span class="user-status is-online"></span> <em>Catherine J. Watkins</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Nicholas R. Walker</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Susan J. Best</em></a>
					<a href="#"><span class="user-status is-idle"></span> <em>Fernando G. Olson</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Brandon S. Young</em></a>
				</div>
				
				
				<div class="chat-group">
					<strong>Work</strong>
					
					<a href="#"><span class="user-status is-busy"></span> <em>Rodrigo E. Lozano</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Robert J. Garcia</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Daniel A. Pena</em></a>
				</div>
				
				
				<div class="chat-group">
					<strong>Other</strong>
					
					<a href="#"><span class="user-status is-online"></span> <em>Dennis E. Johnson</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Stuart A. Shire</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Janet I. Matas</em></a>
					<a href="#"><span class="user-status is-online"></span> <em>Mindy A. Smith</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Herman S. Foltz</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Gregory E. Robie</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>Nellie T. Foreman</em></a>
					<a href="#"><span class="user-status is-busy"></span> <em>William R. Miller</em></a>
					<a href="#"><span class="user-status is-idle"></span> <em>Vivian J. Hall</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Melinda A. Anderson</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Gary M. Mooneyham</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Robert C. Medina</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Dylan C. Bernal</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Marc P. Sanborn</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Kenneth M. Rochester</em></a>
					<a href="#"><span class="user-status is-offline"></span> <em>Rachael D. Carpenter</em></a>
				</div>
			
			</div>
			
			<!-- conversation template -->
			<div class="chat-conversation">
				
				<div class="conversation-header">
					<a href="#" class="conversation-close">
						&times;
					</a>
					
					<span class="user-status is-online"></span>
					<span class="display-name">Arlind Nushi</span> 
					<small>Online</small>
				</div>
				
				<ul class="conversation-body">	
					<li>
						<span class="user">Arlind Nushi</span>
						<span class="time">09:00</span>
						<p>Are you here?</p>
					</li>
					<li class="odd">
						<span class="user">Brandon S. Young</span>
						<span class="time">09:25</span>
						<p>This message is pre-queued.</p>
					</li>
					<li>
						<span class="user">Brandon S. Young</span>
						<span class="time">09:26</span>
						<p>Whohoo!</p>
					</li>
					<li class="odd">
						<span class="user">Arlind Nushi</span>
						<span class="time">09:27</span>
						<p>Do you like it?</p>
					</li>
				</ul>
				
				<div class="chat-textarea">
					<textarea class="form-control autogrow" placeholder="Type your message"></textarea>
				</div>
				
			</div>
			
		</div>
		<!-- end: Chat Section -->
		
		
	</div>
	
	
	




	<!-- Imported styles on this page -->
	<link rel="stylesheet" href="./assets/css/fonts/meteocons/css/meteocons.css">

	<!-- Bottom Scripts -->
	<script src="./assets/js/bootstrap.min.js"></script>
	<script src="./assets/js/TweenMax.min.js"></script>
	<script src="./assets/js/resizeable.js"></script>
	<script src="./assets/js/joinable.js"></script>
	<script src="./assets/js/xenon-api.js"></script>
	<script src="./assets/js/xenon-toggles.js"></script>


	<!-- Imported scripts on this page -->
	<script src="./assets/js/xenon-widgets.js"></script>
	<script src="./assets/js/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="./assets/js/jvectormap/regions/jquery-jvectormap-world-mill-en.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="./assets/js/xenon-custom.js"></script>

</body>
</html>