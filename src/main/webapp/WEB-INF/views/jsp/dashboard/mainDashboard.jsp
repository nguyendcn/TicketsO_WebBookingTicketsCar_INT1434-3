<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>

    <html class="ticketsO">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Website Administration</title>
        <link rel="shortcut icon" type="image/x-icon" href="http://trials.vevs.website/nguyenne/favicon.ico">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/toastr.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/ladda-themeless.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/custom.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/jquery.gritter.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/sweetalert.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/jquery.bootstrap-touchspin.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/morris.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/plugin_bus_schedule.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/css.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/custom(1).css">
        <style type="text/css"></style>
        <style type="text/css">
            .jqstooltip {
                position: absolute;
                left: 0px;
                top: 0px;
                visibility: hidden;
                background: rgb(0, 0, 0) transparent;
                background-color: rgba(0, 0, 0, 0.6);
                filter: progid: DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
                -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
                color: white;
                font: 10px arial, san serif;
                text-align: left;
                white-space: nowrap;
                padding: 5px;
                border: 1px solid white;
                z-index: 10000;
            }
            
            .jqsfield {
                color: white;
                font: 10px arial, san serif;
                text-align: left;
            }
        </style>
    </head>

    <body class="pace-done" data-gr-c-s-loaded="true">

        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <button class="navbar-minimalize" type="button"></button>

                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu" style="">
                        <li class="nav-header">
                            <div>
                                <a href="https://www.vevs.com/" target="_blank" class="navbar-brand">VEVS</a> </div>
                            <div class="dropdown profile-element">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#">
                                    <span class="clear"> 
							<span class="block m-t-xs"> <strong class="font-bold">${user}</strong></span>
                                    <span class="text-muted text-xs block">Super User <b class="caret"></b></span>
                                    </span>
                                </a>
                                <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsAuth&amp;action=pjActionProfile">Profile</a></li>
                                    <li><a href="${pageContext.request.contextPath}/dashboard/user/logout">Logout</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="active" data-menu="dashboard">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>
                        </li>
                        <li class="">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#"><i class="fa fa-bus"></i> <span class="nav-label">Bus Schedule</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionIndex">Timetable</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionIndex">Bookings</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleRoutes&amp;action=pjActionStopsAndLines">Stops &amp; Lines</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleReports&amp;action=pjActionIndex">Reports</a></li>
                                <li>
                                    <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#"><span class="nav-label">Settings</span><span class="fa arrow"></span></a>

                                    <ul class="nav nav-third-level collapse">
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleOptions&amp;action=pjActionIndex">Options</a></li>
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBusTypes&amp;action=pjActionIndex">Bus Types</a></li>
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleOptions&amp;action=pjActionPayment">Payments</a></li>
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleOptions&amp;action=pjActionBookingForm">Checkout Form</a></li>
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleOptions&amp;action=pjActionConfirmation">Notifications</a></li>
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleOptions&amp;action=pjActionTemplate">Ticket</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li data-menu="website-editor">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=home"><i class="fa fa-files-o"></i> <span class="nav-label">Website Editor</span></a>
                        </li>
                        <li data-menu="pages-and-content">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#"><i class="fa fa-book"></i> <span class="nav-label">Pages &amp; Content</span> <span class="fa arrow"></span></a>

                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionIndex">Web Pages</a></li>
                                <li data-plugin="pjContent"><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjContentPlugins&amp;action=pjActionIndex">Content plugins</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsGallery&amp;action=pjActionIndex">Images &amp; Photos</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionMenuEditor">Menu Editor</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionLinks">Links &amp; Labels</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionComingSoon">"Coming soon" Page</a></li>
                            </ul>
                        </li>
                        <li data-menu="apps">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#"><i class="fa fa fa-desktop"></i> <span class="nav-label">Apps</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsContact&amp;action=pjActionIndex">Web Forms</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsCodes&amp;action=pjActionIndex">External Code</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionGDPR">GDPR</a></li>
                                <li><a href="https://www.vevs.com/web-apps.php" target="_blank">See More Apps</a></li>
                            </ul>
                        </li>
                        <li data-menu="seo">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#"><i class="fa fa-sitemap"></i> <span class="nav-label">SEO</span> <span class="fa arrow"></span></a>

                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionMetaTags">Meta Tags</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionCanonical">Canonical Tags</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionRobots">Robots.txt</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionSitemap">Sitemap</a></li>
                            </ul>
                        </li>
                        <li data-menu="website-settings">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#"><i class="fa fa-cogs"></i> <span class="nav-label">Website Settings</span> <span class="fa arrow"></span></a>

                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionDetails">Company Details</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionRegional">Regional Settings</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionOptions">General Options</a></li>
                                <li><a href="${pageContext.request.contextPath}/dashboard/users/show">Users</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsLocale&amp;action=pjActionIndex">Languages</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionDesign">Design &amp; Colors</a></li>
                                <li>
                                    <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#">Domain &amp; Email<span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level collapse">
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionDomain">Domain name</a></li>
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionEmails">Email accounts</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>


                    </ul>
                </div>
            </nav>
            <div id="page-wrapper" class="gray-bg dashbard-1" style="min-height: 2307.92px;">
                <div class="row border-bottom bar-top">
                    <div class="bar-col bar-col-1of3">
                        <div class="bar-edit-pages">
                            <div class="btn-group bar-top-section">
                                <button type="button" class="bar-top-anchor dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Edit page: <span>-- choose --</span> 
                    <em class="m-l-xs"><span class="caret"></span></em>
                </button>

                                <ul class="dropdown-menu">
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=home">Home</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=reservations">Reservations</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=lines">Lines</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=custom_3">About Us</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=terms">Terms</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=privacy">Privacy policy</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=custom_8">Contact Us</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=custom_9">Blog</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=custom_10">FAQ</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=custom_11">Testimonials</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=not_found">404 Not Found</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=thank_you">Thank you</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=details">Reservation details</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="bar-col bar-col-2of3">
                        <div class="row">
                            <div class="bar-col bar-col-1of2 text-center">
                                <div class="bar-top-section">
                                    <a href="http://trials.vevs.website/nguyenne/" class="bar-top-anchor" target="_blank"><i class="fa fa-external-link m-r-xs"></i>Open Website</a>
                                </div>
                                <div class="bar-top-section">
                                    <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsPages&amp;action=pjActionEditor&amp;page=home" class="bar-top-anchor">Website Editor</a>
                                </div>
                            </div>

                            <div class="bar-col bar-col-1of2 text-right">
                                <div class="bar-top-section">
                                    <a class="bar-top-anchor" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#" data-toggle="modal" data-target="#contactMsgModal" title="Contact Support">Contact Us</a>
                                </div>
                                <div class="bar-top-section">
                                    <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard#" class="bar-top-anchor right-sidebar-toggle-main">Help Center</a>
                                </div>
                                <div class="bar-top-section">
                                    <a href="${pageContext.request.contextPath}/dashboard/user/logout" class="bar-top-anchor">Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="row">
                        <div class="col-lg-4 col-sm-6">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-primary pull-right">Next 7 days</span>

                                    <h5>New Bookings</h5>
                                </div>

                                <div class="ibox-content">
                                    <div class="row m-t-md m-b-sm">
                                        <div class="col-xs-6">
                                            <p class="h1 no-margins"><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionIndex&amp;status=confirmed&amp;last_week=1">0</a></p>
                                            <small class="text-info">Confirmed</small>
                                        </div>

                                        <div class="col-xs-6">
                                            <p class="h1 no-margins"><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionIndex&amp;status=pending&amp;last_week=1">5</a></p>
                                            <small class="text-info">Pending</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-6">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-primary pull-right">This month</span>

                                    <h5>All Bookings</h5>
                                </div>

                                <div class="ibox-content">
                                    <div class="row m-t-md m-b-sm">
                                        <div class="col-xs-6">
                                            <p class="h1 no-margins"><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionIndex">5</a></p>
                                            <small class="text-info">Bookings</small>
                                        </div>

                                        <div class="col-xs-6">
                                            <p class="h1 no-margins">₫ 611.60</p>
                                            <small class="text-info">Total Amount</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-12">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <span class="label label-primary pull-right">Updated 09.2019</span>

                                    <h5>Total Bookings per Month</h5>
                                </div>

                                <div class="ibox-morris">
                                    <div id="morris-one-line-chart" style="position: relative;"><svg height="122" version="1.1" width="322" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.567411px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="297" y="95.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">Sep</tspan></text><text x="242.6" y="95.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">Aug</tspan></text><text x="188.2" y="95.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">Jul</tspan></text><text x="133.8" y="95.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">Jun</tspan></text><text x="79.4" y="95.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">May</tspan></text><text x="25" y="95.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">Apr</tspan></text><path fill="none" stroke="#54cdb4" d="M25,83L79.4,83L133.8,83L188.2,83L242.6,83L297,25" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="25" cy="83" r="4" fill="#54cdb4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="79.4" cy="83" r="4" fill="#54cdb4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="133.8" cy="83" r="4" fill="#54cdb4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="188.2" cy="83" r="4" fill="#54cdb4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="242.6" cy="83" r="4" fill="#54cdb4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="297" cy="25" r="4" fill="#54cdb4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
                                        <div class="morris-hover morris-default-style" style="left: 0px; top: 15px; display: none;">
                                            <div class="morris-hover-row-label">Apr</div>
                                            <div class="morris-hover-point" style="color: #54cdb4">
                                                Bookings: 0
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 dashboard-stats2">
                            <div class="ibox float-e-margins">
                                <div class="ibox-content ibox-heading clearfix">
                                    <div class="pull-left">
                                        <h3>Today's Buses</h3>
                                        <small>There are <strong>6</strong> buses today</small>
                                    </div>

                                    <div class="pull-right m-t-md">
                                        <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionIndex" class="btn btn-primary btn-sm btn-outline m-n">View Timetable</a>
                                    </div>
                                </div>

                                <div class="ibox-content inspinia-timeline">
                                    <div class="timeline-item">
                                        <div class="row">
                                            <div class="col-xs-3 date">
                                                <i class="fa fa-clock-o"></i> September 21 11:00 am </div>

                                            <div class="col-xs-7 content">
                                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionBookings&amp;bus_id=8&amp;date=21/09/2019">
                                                    <p class="m-b-xs"><strong>Washington - Charlotte - Atlanta</strong></p>
                                                    <p class="m-n">Departure: <em>11:00 am</em></p>
                                                    <p class="m-n">Arrival: <em>2:15 pm</em></p>
                                                    <p class="m-n">FT Tickets: <em>0</em></p>
                                                    <p class="m-b-sm">Total Tickets: <em>0</em></p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="timeline-item">
                                        <div class="row">
                                            <div class="col-xs-3 date">
                                                <i class="fa fa-clock-o"></i> September 21 11:00 am </div>

                                            <div class="col-xs-7 content">
                                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionBookings&amp;bus_id=7&amp;date=21/09/2019">
                                                    <p class="m-b-xs"><strong>Atlanta - Washington DC</strong></p>
                                                    <p class="m-n">Departure: <em>11:00 am</em></p>
                                                    <p class="m-n">Arrival: <em>2:00 pm</em></p>
                                                    <p class="m-n">FT Tickets: <em>7</em></p>
                                                    <p class="m-b-sm">Total Tickets: <em>7</em></p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="timeline-item">
                                        <div class="row">
                                            <div class="col-xs-3 date">
                                                <i class="fa fa-clock-o"></i> September 21 12:20 pm </div>

                                            <div class="col-xs-7 content">
                                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionBookings&amp;bus_id=10&amp;date=21/09/2019">
                                                    <p class="m-b-xs"><strong>Washington - Charlotte - Atlanta</strong></p>
                                                    <p class="m-n">Departure: <em>12:20 pm</em></p>
                                                    <p class="m-n">Arrival: <em>3:00 pm</em></p>
                                                    <p class="m-n">FT Tickets: <em>0</em></p>
                                                    <p class="m-b-sm">Total Tickets: <em>0</em></p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="timeline-item">
                                        <div class="row">
                                            <div class="col-xs-3 date">
                                                <i class="fa fa-clock-o"></i> September 21 2:00 pm </div>

                                            <div class="col-xs-7 content">
                                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionBookings&amp;bus_id=5&amp;date=21/09/2019">
                                                    <p class="m-b-xs"><strong>Montreal  - Toronto - Vancouver</strong></p>
                                                    <p class="m-n">Departure: <em>2:00 pm</em></p>
                                                    <p class="m-n">Arrival: <em>6:40 pm</em></p>
                                                    <p class="m-n">FT Tickets: <em>0</em></p>
                                                    <p class="m-b-sm">Total Tickets: <em>0</em></p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="timeline-item">
                                        <div class="row">
                                            <div class="col-xs-3 date">
                                                <i class="fa fa-clock-o"></i> September 21 3:55 pm </div>

                                            <div class="col-xs-7 content">
                                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionBookings&amp;bus_id=9&amp;date=21/09/2019">
                                                    <p class="m-b-xs"><strong>Vancouver - Toronto - Montreal</strong></p>
                                                    <p class="m-n">Departure: <em>3:55 pm</em></p>
                                                    <p class="m-n">Arrival: <em>6:35 pm</em></p>
                                                    <p class="m-n">FT Tickets: <em>0</em></p>
                                                    <p class="m-b-sm">Total Tickets: <em>0</em></p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="timeline-item">
                                        <div class="row">
                                            <div class="col-xs-3 date">
                                                <i class="fa fa-clock-o"></i> September 21 4:45 pm </div>

                                            <div class="col-xs-7 content">
                                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionBookings&amp;bus_id=6&amp;date=21/09/2019">
                                                    <p class="m-b-xs"><strong>Vancouver - Toronto - Montreal</strong></p>
                                                    <p class="m-n">Departure: <em>4:45 pm</em></p>
                                                    <p class="m-n">Arrival: <em>8:10 pm</em></p>
                                                    <p class="m-n">FT Tickets: <em>0</em></p>
                                                    <p class="m-b-sm">Total Tickets: <em>0</em></p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-8 dashboard-stats3">
                            <div class="ibox float-e-margins">
                                <div class="ibox-content ibox-heading clearfix">
                                    <div class="pull-left">
                                        <h3>Latest Bookings</h3>
                                        <small>total <strong>10</strong> bookings made</small>
                                    </div>

                                    <div class="pull-right m-t-md">
                                        <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionIndex" class="btn btn-primary btn-sm btn-outline m-n">View All Bookings</a>
                                    </div>
                                </div>

                                <div class="ibox-content">
                                    <div class="table-responsive table-responsive-secondary">
                                        <table class="table table-striped table-hover no-margins">
                                            <thead>
                                                <tr>
                                                    <th>Date/Time</th>
                                                    <th>Client</th>
                                                    <th>Bus/Route</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=11">21/09/2019<br>11:00 am - 2:00 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=11">FD  FDS<br>denisbgitonga@gmail.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=11">Atlanta - Washington DC, 11:00 am - 2:00 pm<br> Atlanta  Washington, DC</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=11" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Pending</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=15">21/09/2019<br>11:00 am - 2:00 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=15">A B<br>a@a.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=15">Atlanta - Washington DC, 11:00 am - 2:00 pm<br> Atlanta  Washington, DC</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=15" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Pending</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=14">21/09/2019<br>11:00 am - 2:00 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=14">660428035663 ISMAIL<br>shamsudinshs@gmail.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=14">Atlanta - Washington DC, 11:00 am - 2:00 pm<br> Atlanta  Washington, DC</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=14" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Pending</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=13">24/09/2019<br>1:00 pm - 4:15 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=13">Michael Bneyamine<br>mjacoup@gmail.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=13">Washington - Charlotte - Atlanta, 11:00 am - 2:15 pm<br> Charlotte  Atlanta</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=13" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Pending</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=12">20/09/2019<br>2:00 pm - 3:20 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=12">dasd asdas<br>asdasdasdaw@gmail.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=12">Montreal  - Toronto - Vancouver, 2:00 pm - 6:40 pm<br> Montreal  Toronto</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=12" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Pending</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=10">17/09/2018<br>2:00 pm - 3:40 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=10">Chantale Andrews<br>xixisiweq@yahoo.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=10">Montreal  - Toronto - Vancouver, 2:00 pm - 6:40 pm<br> Montreal  Toronto</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=10" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Cancelled</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=9">17/09/2018, 2:00 pm<br>18/09/2018, 6:40 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=9">Adrienne Fitzpatrick<br>wygijeba@yahoo.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=9">Montreal  - Toronto - Vancouver, 2:00 pm - 6:40 pm<br> Montreal  Vancouver</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=9" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Confirmed</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=8">17/09/2018<br>11:00 am - 2:00 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=8">Christian Tate<br>xiban@gmail.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=8">Atlanta - Washington DC, 11:00 am - 2:00 pm<br> Atlanta  Washington, DC</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=8" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Pending</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=7">17/09/2018<br>11:00 am - 2:00 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=7">Ruby Russell<br>codyxy@gmail.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=7">Atlanta - Washington DC, 11:00 am - 2:00 pm<br> Atlanta  Washington, DC</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=7" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Confirmed</a></td>
                                                </tr>
                                                <tr>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=6">17/09/2018<br>11:00 am - 2:00 pm</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=6">Macey Walker<br>sesyd@gmail.com</a></td>
                                                    <td><a class="btn-link" href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=6">Atlanta - Washington DC, 11:00 am - 2:00 pm<br> Atlanta  Washington, DC</a></td>
                                                    <td><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionUpdate&amp;id=6" class="btn bg-confirmed btn-xs no-margin"><i class="fa fa-check"></i> Confirmed</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <script type="text/javascript">
                    var pjGrid = pjGrid || {};
                    var myLabel = myLabel || {};
                    myLabel.bookings = "Bookings";

                    myLabel.month_booked = [];
                    myLabel.user_activities = [];
                    myLabel.month_booked.push({
                        y: "Apr",
                        a: 0
                    });
                    myLabel.month_booked.push({
                        y: "May",
                        a: 0
                    });
                    myLabel.month_booked.push({
                        y: "Jun",
                        a: 0
                    });
                    myLabel.month_booked.push({
                        y: "Jul",
                        a: 0
                    });
                    myLabel.month_booked.push({
                        y: "Aug",
                        a: 0
                    });
                    myLabel.month_booked.push({
                        y: "Sep",
                        a: 5
                    });
                </script>
                <div class="footer">
                    <div>Copyright <strong><a href="https://www.vevs.com/" target="_blank">VEVS.com</a></strong> © 2019</div>
                </div>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/resources/core/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/jquery.metisMenu.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/jquery.gritter.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/jquery.sparkline.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/toastr.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/spin.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/ladda.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/ladda.jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/sweetalert.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/pace.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/jquery.bootstrap-touchspin.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/core/js/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/dashboard/index.php"></script>
        <script src="${pageContext.request.contextPath}/resources/js/dashboard/pjCmsKbase2.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/dashboard/inspinia.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/dashboard/pjBusSchedule.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/dashboard/pjCmsCore.js"></script>
        <script>
            dashboard /
                (function($, undefined) {
                    dashboard /
                        $(function() {
                            if ($.fn.gallery !== undefined) {
                                $("[data-gallery]").each(function() {
                                    var data = $(this).data("gallery");
                                    if (data !== undefined) {
                                        $(data.input).gallery("option", "maxFileSize", 3145728);
                                    }
                                });
                            }
                        });
                })(jQuery_Cms);
        </script>

    </body>

    </html>