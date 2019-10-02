<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html class="ticketsO_website">

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
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/icheck/1.0.2/custom.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/jquery.gritter.css">

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

        <body class=" pace-done" data-gr-c-s-loaded="true">
            <div class="pace  pace-inactive">
                <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
                    <div class="pace-progress-inner"></div>
                </div>
                <div class="pace-activity"></div>
            </div>
            <div id="wrapper">
                <nav class="navbar-default navbar-static-side" role="navigation">
                    <button class="navbar-minimalize" type="button"></button>

                    <div class="sidebar-collapse">
                        <ul class="nav metismenu" id="side-menu">
                            <li class="nav-header">
                                <div>
                                    <a href="https://www.vevs.com/" target="_blank" class="navbar-brand">VEVS</a> </div>
                                <div class="dropdown profile-element">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#">
                                        <span class="clear"> 
                                <span class="block m-t-xs"> <strong class="font-bold">nguyen</strong></span>
                                        <span class="text-muted text-xs block">Super User <b class="caret"></b></span>
                                        </span>
                                    </a>
                                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsAuth&amp;action=pjActionProfile">Profile</a></li>
                                        <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsAuth&amp;action=pjActionLogout">Logout</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li data-menu="dashboard">
                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusSchedule&amp;action=pjActionDashboard"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>
                            </li>
                            <li class="">
                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#"><i class="fa fa-bus"></i> <span class="nav-label">Bus Schedule</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionIndex">Timetable</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionIndex">Bookings</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleRoutes&amp;action=pjActionStopsAndLines">Stops &amp; Lines</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleReports&amp;action=pjActionIndex">Reports</a></li>
                                    <li>
                                        <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#"><span class="nav-label">Settings</span><span class="fa arrow"></span></a>

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
                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#"><i class="fa fa-book"></i> <span class="nav-label">Pages &amp; Content</span> <span class="fa arrow"></span></a>

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
                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#"><i class="fa fa fa-desktop"></i> <span class="nav-label">Apps</span><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level collapse">
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsContact&amp;action=pjActionIndex">Web Forms</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsCodes&amp;action=pjActionIndex">External Code</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionGDPR">GDPR</a></li>
                                    <li><a href="https://www.vevs.com/web-apps.php" target="_blank">See More Apps</a></li>
                                </ul>
                            </li>
                            <li data-menu="seo">
                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#"><i class="fa fa-sitemap"></i> <span class="nav-label">SEO</span> <span class="fa arrow"></span></a>

                                <ul class="nav nav-second-level collapse">
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionMetaTags">Meta Tags</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionCanonical">Canonical Tags</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionRobots">Robots.txt</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionSitemap">Sitemap</a></li>
                                </ul>
                            </li>
                            <li class="active" data-menu="website-settings">
                                <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#"><i class="fa fa-cogs"></i> <span class="nav-label">Website Settings</span> <span class="fa arrow"></span></a>

                                <ul class="nav nav-second-level collapse in">
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionDetails">Company Details</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionRegional">Regional Settings</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionOptions">General Options</a></li>
                                    <li class="active"><a href="${pageContext.request.contextPath}/dashboard/users/show">Users</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsLocale&amp;action=pjActionIndex">Languages</a></li>
                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionDesign">Design &amp; Colors</a></li>
                                    <li>
                                        <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#">Domain &amp; Email<span class="fa arrow"></span></a>
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
                <div id="page-wrapper" class="gray-bg dashbard-1" style="min-height: 707px;">
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
                                        <a class="bar-top-anchor" href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#" data-toggle="modal" data-target="#contactMsgModal" title="Contact Support">Contact Us</a>
                                    </div>
                                    <div class="bar-top-section">
                                        <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex#" class="bar-top-anchor right-sidebar-toggle-main">Help Center</a>
                                    </div>
                                    <div class="bar-top-section">
                                        <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsAuth&amp;action=pjActionLogout" class="bar-top-anchor">Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row wrapper border-bottom white-bg page-heading">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-10">
                                    <h2>Users</h2>
                                </div>
                            </div>
                            <p class="m-b-none"><i class="fa fa-info-circle"></i>Add and manage an unlimited number of system users. You can set users as 'Inactive' if you wish to temporarily restrict their access to the system without deleting them.</p>
                        </div>
                    </div>

                    <div class="wrapper wrapper-content animated fadeInRight">

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-content">

                                        <div class="row m-b-md">
                                            <div class="col-sm-4 mobile-text-center">
                                                <a href="${pageContext.request.contextPath}/dashboard/users/create" class="btn btn-primary"><i class="fa fa-plus m-r-xs"></i> Add user</a> </div>
                                            <div class="col-md-4 col-sm-8">
                                                <form action="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex" method="get" class="form-horizontal frm-filter">
                                                    <div class="input-group">
                                                        <input type="text" name="q" placeholder="Search" class="form-control">
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-primary" type="submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="col-md-4 col-sm-12 text-right mobile-text-center">
                                                <div class="btn-group m-b-sm" role="group" aria-label="...">
                                                    <button class="btn btn-primary btn-all" type="button">All</button>
                                                    <button class="btn btn-white btn-filter" type="button" data-column="status" data-value="T"><i class="fa fa-check m-r-xs"></i>Active</button>
                                                    <button class="btn btn-white btn-filter" type="button" data-column="status" data-value="F"><i class="fa fa-times m-r-xs"></i>Inactive</button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="sk-spinner sk-spinner-double-bounce">
                                            <div class="sk-double-bounce1"></div>
                                            <div class="sk-double-bounce2"></div>
                                        </div>
                                        <div id="grid" class="pj-grid">
                                            <div class="table-responsive table-responsive-secondary">
                                                <table class="table table-striped table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th class="cell-width-2">
                                                                <div class="icheckbox_square-green" style="position: relative;"><input type="checkbox" class="pj-table-toggle-rows" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                                            </th>
                                                            <th><span role="button" tabindex="-1" aria-pressed="true" class="m-r-xs pj-table-sort-down text-info"><i class="fa fa-sort-amount-asc"></i></span>Name</th>
                                                            <th><span role="button" tabindex="-1" aria-pressed="false" class="m-r-xs pj-table-sort-up"><i class="fa fa-sort-amount-asc"></i></span>Email</th>
                                                            <th><span role="button" tabindex="-1" aria-pressed="false" class="m-r-xs pj-table-sort-up"><i class="fa fa-sort-amount-asc"></i></span>Registration Date/Time</th>
                                                            <th><span role="button" tabindex="-1" aria-pressed="false" class="m-r-xs pj-table-sort-up"><i class="fa fa-sort-amount-asc"></i></span>Last Login</th>
                                                            <th><span role="button" tabindex="-1" aria-pressed="false" class="m-r-xs pj-table-sort-up"><i class="fa fa-sort-amount-asc"></i></span>Role</th>
                                                            <th><span role="button" tabindex="-1" aria-pressed="false" class="m-r-xs pj-table-sort-up"><i class="fa fa-sort-amount-asc"></i></span>Status</th>
                                                            <th class="text-right">&nbsp;</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        <c:forEach items="${listUsers}" var="user" varStatus="loop">
                                                            <tr data-id="id_${loop.index + 1}">
                                                                <td class="cell-width-2">
                                                                    <div class="icheckbox_square-green" style="position: relative;"><input type="checkbox" name="record[]" value="1" class="pj-table-select-row" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                                                                </td>
                                                                <td class="pj-table-cell-editable"><span class="pj-table-cell-label">${user.name}</span><input type="text" data-name="name" class="form-control pj-selector-editable" value="nguyen" style="display: none;"></td>
                                                                <td class="pj-table-cell-editable"><span class="pj-table-cell-label"><a href="mailto:${user.email}">${user.email}</a></span><input type="text" data-name="email" class="form-control pj-selector-editable" value="${user.email}"
                                                                        style="display: none;"></td>
                                                                <td><span class="pj-table-cell-label">${user.registerDate == null?"(empty date)":user.registerDate}</span></td>
                                                                <td><span class="pj-table-cell-label">${user.lastTimeLogin == null?"(empty date)":user.lastTimeLogin}</span></td>
                                                                <td><span class="pj-table-cell-label"><span class="label">${user.getRole().getName()}</span></span>
                                                                </td>
                                                                <td class="pj-table-cell-editable"><span class="pj-table-cell-label">
                                                                    <div role="button" tabindex="0" aria-disabled="false" class="btn ${user.getStatus().getId()== 1?'btn-success':'btn-default'} btn-xs no-margins">
                                                                        <i class="fa fa-${user.getStatus().getId() == 1?'check':'times'}"></i> ${user.getStatus().getName()}
                                                                    </div>
                                                                    </span><input type="hidden" data-name="status" class="pj-selector-editable" value="F"></td>
                                                                <td>
                                                                    <div class="m-t-xs text-right">
                                                                        <a href="/TicketsO/dashboard/users/editRecordById?idRecord=${user.id}" class="btn btn-primary btn-outline btn-sm m-l-xs pj-table-icon-edit">
                                                                            <i class="fa fa-pencil"></i>
                                                                        </a>
                                                                        <a value="/TicketsO/api/delRecordById?idRecord=${user.id}" class="btn btn-danger btn-outline btn-sm m-l-xs pj-table-icon-delete">
                                                                            <i class="fa fa-trash"></i>
                                                                        </a>
                                                                    </div>
                                                                </td>
                                                            </tr>

                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="row table-responsive-actions">
                                                <div class="col-lg-5 col-md-7 col-sm-7">
                                                    <div class="row">
                                                        <div class="col-md-6 col-sm-7">
                                                            <div class="btn-group btn-block"><button data-toggle="dropdown" class="btn btn-primary btn-outline dropdown-toggle btn-block">Choose Action <span class="caret"></span></button>
                                                                <ul class="dropdown-menu">
                                                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionDeleteUserBulk" class="pj-paginator-action">Delete selected</a></li>
                                                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionStatusUser" class="pj-paginator-action">Revert status</a></li>
                                                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionExportUser" class="pj-paginator-action">Export</a></li>
                                                                    <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionSubscribeUserBulk" class="pj-paginator-action">Subscribe selected</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-sm-5">
                                                            <div class="input-group">
                                                                <span class="input-group-btn">
                                                                    <c:choose> 
                                                                        <c:when test="${currentPage == 0 || currentPage == 1}">
                                                                            <button type="button" class="btn btn-white pj-paginator-list-prev" disabled>
                                                                                <span class="hidden-sm">Prev</span>
                                                                <i class="fa fa-step-backward visible-sm-inline-block"></i>
                                                                </button>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <button type="button" class="btn btn-white pj-paginator-list-prev">
                                                                                <span class="hidden-sm">Prev</span>
                                                                                <i class="fa fa-step-backward visible-sm-inline-block"></i>
                                                                            </button>
                                                                </c:otherwise>
                                                                </c:choose>

                                                                </span>
                                                                <input type="text" name="page" value="${currentPage}" class="form-control pj-selector-goto">
                                                                <span class="input-group-btn">
                                                                    <c:choose>
                                                                            <c:when test="${currentPage == quantityPage}">
                                                                                    <button type="button" class="btn btn-white pj-paginator-list-next" disabled>
                                                                                            <span class="hidden-sm">Next</span>
                                                                <i class="fa fa-step-forward visible-sm-inline-block"></i>
                                                                </button>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <button type="button" class="btn btn-white pj-paginator-list-next">
                                                                                            <span class="hidden-sm">Next</span>
                                                                                            <i class="fa fa-step-forward visible-sm-inline-block"></i>
                                                                                        </button>
                                                                </c:otherwise>
                                                                </c:choose>

                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 col-md-5 col-sm-5">
                                                    <div class="form-inline show-total mobile-text-right">
                                                        <div class="form-group"><label>Show</label></div>
                                                        <div class="form-group m-l-xs">
                                                            <select class="form-control pj-selector-row-count">
                                                                <option ${numPerPage== 10?'selected':''} value="10">10</option>
                                                                <option ${numPerPage== 20?'selected':''} value="20">20</option>
                                                                <option ${numPerPage== 50?'selected':''} value="50">50</option>
                                                                <option ${numPerPage== 100?'selected':''} value="100">100</option>
                                                                <option ${numPerPage== 200?'selected':''} value="200">200</option>
                                                                <option ${numPerPage== 500?'selected':''} value="500">500</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group m-l-xs"><label>of <strong>${quantityUsers}</strong> total</label></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <script type="text/javascript">
                        var pjGrid = pjGrid || {};
                        pjGrid.jsDateFormat = "dd/MM/yyyy";
                        pjGrid.currentUserId = 1;
                        var myLabel = myLabel || {};
                        myLabel.name = "Name";
                        myLabel.email = "Email";
                        myLabel.created = "Registration Date\/Time";
                        myLabel.last_login = "Last Login";
                        myLabel.role = "Role";
                        myLabel.confirmed = "Is confirmed";
                        myLabel.revert_status = "Revert status";
                        myLabel.exported = "Export";
                        myLabel.active = "Active";
                        myLabel.inactive = "Inactive";
                        myLabel.delete_selected = "Delete selected";
                        myLabel.delete_confirmation = "Are you sure you want to delete selected entry(s)?";
                        myLabel.subscribe_selected = "Subscribe selected";
                        myLabel.subscribe_confirmation = "Are you sure you want to subscribe selected entry(s) to receiving emails?";
                        myLabel.status = "Status";
                        myLabel.limit_title = "Add user?";
                        myLabel.limit_desc = "To add more users to your website you need to upgrade!";
                        myLabel.limit_submit = "Upgrade Account";
                        myLabel.show_confirm_button = true;
                    </script>
                    <div class="footer">
                        <div>Copyright <strong><a href="https://www.vevs.com/" target="_blank">VEVS.com</a></strong> © 2019</div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="contactMsgModal" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="contactMsgModalLabel">
                <div class="modal-dialog">
                    <form action="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex" method="post" accept-charset="utf-8" id="contactMsgForm" novalidate="novalidate">
                        <input type="hidden" name="do_send" value="1">
                        <div class="modal-content">
                            <div class="modal-header kb-modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                                <h4 class="modal-title" id="contactMsgModalLabel">Need help? Send a message to our support team</h4>
                            </div>

                            <div class="panel-body bg-light">
                                <div class="form-group m-n">
                                    <textarea class="form-control" name="question" placeholder="Type your questions" rows="7"></textarea>
                                </div>
                            </div>

                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-send-o m-r-xs"></i>Send</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times m-r-xs"></i>Close</button>
                            </div>
                        </div>
                    </form>
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
            <script src="${pageContext.request.contextPath}/resources/core/js/pace.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/core/js/jquery.bootstrap-touchspin.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/core/js/raphael.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/core/js/morris.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/dashboard/index.php"></script>
            <script src="${pageContext.request.contextPath}/resources/js/dashboard/pjCmsKbase2.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/dashboard/inspinia.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/dashboard/pjCmsCore.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/dashboard/jquery.datagrid.js"></script>
            <script src="${pageContext.request.contextPath}/resources/core/icheck/1.0.2/icheck.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/dashboard/user.js"></script>
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard/sweetalert.css">
            <script src="https://code.jquery.com/jquery-3.1.1.js" integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" crossorigin="anonymous"></script>

            <script>
                (function($, undefined) {
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