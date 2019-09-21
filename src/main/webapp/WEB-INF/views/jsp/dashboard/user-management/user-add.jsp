<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <!-- saved from url=(0089)http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&action=pjActionCreate -->
    <html class="gr__trials_vevs_website">

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
                                <a data-toggle="dropdown" class="dropdown-toggle" href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#">
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
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#"><i class="fa fa-bus"></i> <span class="nav-label">Bus Schedule</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleSchedule&amp;action=pjActionIndex">Timetable</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleBookings&amp;action=pjActionIndex">Bookings</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleRoutes&amp;action=pjActionStopsAndLines">Stops &amp; Lines</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjBusScheduleReports&amp;action=pjActionIndex">Reports</a></li>
                                <li>
                                    <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#"><span class="nav-label">Settings</span><span class="fa arrow"></span></a>

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
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#"><i class="fa fa-book"></i> <span class="nav-label">Pages &amp; Content</span> <span class="fa arrow"></span></a>

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
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#"><i class="fa fa fa-desktop"></i> <span class="nav-label">Apps</span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsContact&amp;action=pjActionIndex">Web Forms</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsCodes&amp;action=pjActionIndex">External Code</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionGDPR">GDPR</a></li>
                                <li><a href="https://www.vevs.com/web-apps.php" target="_blank">See More Apps</a></li>
                            </ul>
                        </li>
                        <li data-menu="seo">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#"><i class="fa fa-sitemap"></i> <span class="nav-label">SEO</span> <span class="fa arrow"></span></a>

                            <ul class="nav nav-second-level collapse">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionMetaTags">Meta Tags</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionCanonical">Canonical Tags</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionRobots">Robots.txt</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSeo&amp;action=pjActionSitemap">Sitemap</a></li>
                            </ul>
                        </li>
                        <li class="active" data-menu="website-settings">
                            <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#"><i class="fa fa-cogs"></i> <span class="nav-label">Website Settings</span> <span class="fa arrow"></span></a>

                            <ul class="nav nav-second-level collapse in">
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionDetails">Company Details</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionRegional">Regional Settings</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionOptions">General Options</a></li>
                                <li class="active"><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex">Users</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsLocale&amp;action=pjActionIndex">Languages</a></li>
                                <li><a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsSettings&amp;action=pjActionDesign">Design &amp; Colors</a></li>
                                <li>
                                    <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#">Domain &amp; Email<span class="fa arrow"></span></a>
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
            <div id="page-wrapper" class="gray-bg dashbard-1" style="min-height: 778px;">
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
                                    <a class="bar-top-anchor" href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#" data-toggle="modal" data-target="#contactMsgModal" title="Contact Support">Contact Us</a>
                                </div>
                                <div class="bar-top-section">
                                    <a href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate#" class="bar-top-anchor right-sidebar-toggle-main">Help Center</a>
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
                                <h2>Add user</h2>

                                <ol class="breadcrumb">
                                    <li>Website Settings</li>
                                    <li><a href="${pageContext.request.contextPath}/dashboard/users/show">Users</a></li>
                                    <li class="active"><strong>Add user</strong></li>
                                </ol>
                            </div>
                        </div>
                        <p class="m-b-none"><i class="fa fa-info-circle"></i>Fill out the fields and click on 'Save' button to add new user to the system. 'Regular User' have a limited access to the system back-end. They can only view Reservations menu.</p>
                    </div>
                </div>

                <div class="row wrapper wrapper-content animated fadeInRight">
                    <div class="col-lg-12">

                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                <form action="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate" method="post" id="frmCreateUser" class="form-horizontal" autocomplete="off" novalidate="novalidate">
                                    <input type="hidden" name="user_create" value="1">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="role_id">Role</label>
                                        <div class="col-sm-6 col-md-7">
                                            <select name="role_id" id="role_id" class="form-control required" aria-required="true">
                                    <option value="">-- Choose--</option>
                                    <option value="1">Super User</option><option value="2">Regular User</option>							</select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="email">Email</label>
                                        <div class="col-sm-6 col-md-7">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-at"></i></span>
                                                <input type="text" name="email" id="email" class="form-control required email" maxlength="255" aria-required="true">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-xs-12 col-sm-2 control-label" for="password">Password</label>
                                        <div class="col-xs-8 col-sm-4 col-md-5">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                                <input type="text" name="password" id="password" class="form-control required" maxlength="100" aria-required="true">
                                            </div>
                                        </div>
                                        <div class="col-xs-4 col-sm-2 col-md-2">
                                            <button type="button" class="btn btn-primary btn-outline btn-block btn-generate">
                                    <i class="fa fa-refresh visible-xs-inline-block"></i>
                                    <span class="hidden-xs">Generate</span>
                                </button>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="name">Name</label>
                                        <div class="col-sm-6 col-md-7">
                                            <input type="text" name="name" id="name" class="form-control required" maxlength="255" aria-required="true">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="phone">Phone</label>
                                        <div class="col-sm-6 col-md-7">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                                <input type="text" name="phone" id="phone" class="form-control" maxlength="255">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="receive_notifications">Receive admin email notifications</label>
                                        <div class="col-sm-6 col-md-7">
                                            <div class="switch onoffswitch-data pull-left">
                                                <div class="onoffswitch">
                                                    <input type="checkbox" class="onoffswitch-checkbox" id="receive_notifications" name="receive_notifications" checked="">
                                                    <label class="onoffswitch-label" for="receive_notifications">
                                            <span class="onoffswitch-inner" data-on="Yes" data-off="No"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="receive_sms_notifications">Receive admin SMS notifications</label>
                                        <div class="col-sm-6 col-md-7">
                                            <div class="switch onoffswitch-data pull-left">
                                                <div class="onoffswitch">
                                                    <input type="checkbox" class="onoffswitch-checkbox" id="receive_sms_notifications" name="receive_sms_notifications" checked="">
                                                    <label class="onoffswitch-label" for="receive_sms_notifications">
                                            <span class="onoffswitch-inner" data-on="Yes" data-off="No"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Status</label>
                                        <div class="col-sm-6 col-md-7">
                                            <div class="switch onoffswitch-data pull-left">
                                                <div class="onoffswitch">
                                                    <input type="checkbox" class="onoffswitch-checkbox" id="status" name="status" checked="">
                                                    <label class="onoffswitch-label" for="status">
                                            <span class="onoffswitch-inner" data-on="Active" data-off="Inactive"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group">
                                        <div class="col-sm-6 col-md-7 col-sm-offset-2">
                                            <button type="submit" class="btn btn-primary btn-lg">Save</button>
                                            <a class="btn btn-white btn-lg pull-right" href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionIndex">Cancel</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>

                <script type="text/javascript">
                    var myLabel = myLabel || {};
                    myLabel.email_taken = "User with this email address already exists.";
                </script>
                <div class="footer">
                    <div>Copyright <strong><a href="https://www.vevs.com/" target="_blank">VEVS.com</a></strong> © 2019</div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="contactMsgModal" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="contactMsgModalLabel">
            <div class="modal-dialog">
                <form action="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsUsers&amp;action=pjActionCreate" method="post" accept-charset="utf-8" id="contactMsgForm" novalidate="novalidate">
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