<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <!DOCTYPE html>
        <html lang="zxx">

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap Min CSS -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/index-page/css/bootstrap.min.css">
            <!-- IcoFont Min CSS -->
            <link rel="stylesheet" href="css/icofont.min.css">
            <!-- Style CSS -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index-style.css">

            <title>TicketsO | Bus Online Booking Services</title>

            <link rel="icon" type="image/png" href="img/favicon.png">
            <!-- Style CSS -->
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.13.0/themes/prism.min.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/components/icon.min.css">
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/calendar.style.css" />
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ui.css" />
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pignose.calendar.min.css" />

            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-53776455-15"></script>
            <script>
                window.dataLayer = window.dataLayer || [];

                function gtag() {
                    dataLayer.push(arguments);
                }
                gtag('js', new Date());

                gtag('config', 'UA-53776455-15');
            </script>

            <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
            <link rel="stylesheet" href="/resources/demos/style.css">
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
            <script>
            </script>
        </head>

        <body data-spy="scroll" data-offset="70">

            <!-- Start Preloader -->
            <div class="preloader">
                <div class="spinner"></div>
            </div>
            <!-- End Preloader -->

            <!-- Navbar Area -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="https://themes.envytheme.com/encontro/" target="_blank">
                Tickets<span>O</span><b>.</b>
				</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto ml-auto">
                            <li class="nav-item"> <a class="nav-link" href="#home">Home</a></li>
                            <li class="nav-item"> <a class="nav-link" href="#features">Features</a></li>
                            <li class="nav-item"> <a class="nav-link" href="#about-us">About Us</a></li>
                            <li class="nav-item"> <a class="nav-link" href="#contact">Contact</a></li>
                            <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/TicketInfo">Tickets</a></li>
                            <li class="nav-item">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
                                             
                                            </button>
                                    <div class="dropdown-menu">
                                        <h6 class="dropdown-header">Dropdown header</h6>
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                    </div>

                                </div>
                            </li>
                        </ul>

                        <div class="others-options">
                            <ul class="navbar-nav mr-auto ml-auto">
                                <li class="nav-item btn-booking">
                                    <a href="#quick-book">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span> Book Now
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->

            <!-- Main Banner -->
            <div id="home" class="main-banner">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="main-banner-content">
                                <h3>
                                    <a href="" class="typewrite" data-period="2000" data-type='[ "Booking your ticket easy", "Quckly for booking" ]'>
                                        <span class="wrap"></span>
                                    </a>
                                </h3>
                                <h1>TicketsO | Bus Online Booking Services</h1>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="particles-js"></div>
            </div>
            <!-- End Main Banner -->

            <!--Features Area-->
            <div id="features" class="features-area">
                <div class="container">
                    <div class="section-title">
                        <h2>Awesome Features</h2>
                        <ul>
                            <li>One Click Booking</li>
                            <li>Friendly Support</li>
                            <li>Cheaper Tickets</li>
                        </ul>
                        <span class="section-title-bg">Features</span>
                    </div>

                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/svgIcon/static-icon-3.svg" alt="image">

                                <h3>5000+ Tickets Agency</h3>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/svgIcon/static-icon-4.svg" alt="image">

                                <h3>400+ Bus Station</h3>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/svgIcon/static-icon-2.svg" alt="image">

                                <h3>2000+ Bus Campany</h3>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/svgIcon/static-icon-1.svg" alt="image">

                                <h3>5000+ Route</h3>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <!--End Features Area-->

            <!--Quick Book Area-->
            <div id="quick-book" class="about-us-area">
                <div class="container">
                    <div class="section-title">
                        <h2>Booking</h2>
                        <span class="section-title-bg">Quick Booking</span>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="skyline">
                        <div class="skyline-city">
                        </div>
                        <div class="bus-img">
                            <img src="https://storage.googleapis.com/fe-production/images/newlayout/banh-xe.gif">
                        </div>
                    </div>
                    <div class="content-inner">
                        <h3>
                            <span>Booking bus tickets of popular routes from&nbsp;</span>
                            <a href="" class="typewrite" data-period="2000" data-type='[ " Sai Gon", "  Ha Noi", " Da Nang" ]'>
                                <span class="wrap"></span>
                            </a>
                            <span>|</span>
                        </h3>
                        <div class="clearfix">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs clearfix" role="tablist">
                                <li id="lisaigon"><a href="#saigon" data-toggle="tab">SÀI GÒN</a></li>
                                <li id="lihanoi"><a href="#hanoi" data-toggle="tab">HÀ NỘI</a></li>
                                <li id="lidanang"><a href="#danang" data-toggle="tab">ĐÀ NẴNG</a></li>
                                <li id="linhatrang"><a href="#nhatrang" data-toggle="tab">NHA TRANG</a></li>
                                <li id="licantho"><a href="#cantho" data-toggle="tab">CẦN THƠ</a></li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade" id="saigon">
                                    <div class="clearfix fix-col">
                                        <div class="col-md-6 pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-sai-gon-di-ha-noi-129t1241.html"><span class="route fl"><small>Sài Gòn →</small> Hà Nội</span></a>
                                                    <span class="price fl">900.000 ₫/vé</span>
                                                    <input class="input-calendar" type="hidden">
                                                    <button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-sai-gon-di-da-lat-lam-dong-129t23991.html"><span class="route fl"><small>Sài Gòn →</small> Đà Lạt</span></a>
                                                    <span class="price fl">150.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-sai-gon-di-da-lat-lam-dong" data-param="129t23991.html" id="dp1568964760372"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-sai-gon-di-nha-trang-khanh-hoa-129t23591.html"><span class="route fl"><small>Sài Gòn →</small> Nha Trang</span></a>
                                                    <span class="price fl">180.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-sai-gon-di-nha-trang-khanh-hoa" data-param="129t23591.html" id="dp1568964760373"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-sai-gon-di-da-nang-129t1151.html"><span class="route fl"><small>Sài Gòn →</small> Đà Nẵng</span></a>
                                                    <span class="price fl">360.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-sai-gon-di-da-nang" data-param="129t1151.html" id="dp1568964760374"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-sai-gon-di-phnom-penh-campuchia-129t1491181.html"><span class="route fl"><small>Sài Gòn →</small> Phnôm Pênh</span></a>
                                                    <span class="price fl">200.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-sai-gon-di-phnom-penh-campuchia" data-param="129t1491181.html" id="dp1568964760375"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-md-6 pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-sai-gon-di-mui-ne-binh-thuan-129t27071.html"><span class="route fl"><small>Sài Gòn →</small> Mũi Né</span></a>
                                                    <span class="price fl">120.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-sai-gon-di-mui-ne-binh-thuan" data-param="129t27071.html" id="dp1568964760376"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-sai-gon-di-vung-tau-ba-ria-vung-tau-129t2131.html"><span class="route fl"><small>Sài Gòn →</small> Vũng Tàu</span></a>
                                                    <span class="price fl">105.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-sai-gon-di-vung-tau-ba-ria-vung-tau" data-param="129t2131.html" id="dp1568964760377"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-sai-gon-di-khanh-hoa-129t1321.html"><span class="route fl"><small>Sài Gòn →</small> Khánh Hòa</span></a>
                                                    <span class="price fl">185.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-sai-gon-di-khanh-hoa" data-param="129t1321.html" id="dp1568964760378"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-sai-gon-di-dak-lak-129t21431.html"><span class="route fl"><small>Sài Gòn →</small> Buôn Ma Thuột</span></a>
                                                    <span class="price fl">200.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-sai-gon-di-dak-lak" data-param="129t21431.html" id="dp1568964760379"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-sai-gon-di-rach-gia-kien-giang-129t23741.html"><span class="route fl"><small>Sài Gòn →</small> Rạch Giá - Kiên Giang</span></a>
                                                    <span class="price fl">120.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-sai-gon-di-rach-gia-kien-giang" data-param="129t23741.html" id="dp1568964760380"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="hanoi">
                                    <div class="clearfix fix-col">
                                        <div class="col-md-6  pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-ha-noi-di-sai-gon-124t1291.html"><span class="route fl"><small>Hà Nội →</small> Sài Gòn</span></a>
                                                    <span class="price fl">900.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-ha-noi-di-sai-gon" data-param="124t1291.html" id="dp1568964760381"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-ha-noi-di-sa-pa-lao-cai-124t24241.html"><span class="route fl"><small>Hà Nội →</small> Sapa</span></a>
                                                    <span class="price fl">260.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-ha-noi-di-sa-pa-lao-cai" data-param="124t24241.html" id="dp1568964760382"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-ha-noi-di-lao-cai-124t1381.html"><span class="route fl"><small>Hà Nội →</small> Lào Cai</span></a>
                                                    <span class="price fl">230.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-ha-noi-di-lao-cai" data-param="124t1381.html" id="dp1568964760383"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-ha-noi-di-thua-thien-hue-124t1571.html"><span class="route fl"><small>Hà Nội →</small> Huế</span></a>
                                                    <span class="price fl">269.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-ha-noi-di-thua-thien-hue" data-param="124t1571.html" id="dp1568964760384"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-ha-noi-di-da-nang-124t1151.html"><span class="route fl"><small>Hà Nội →</small> Đà Nẵng</span></a>
                                                    <span class="price fl">450.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-ha-noi-di-da-nang" data-param="124t1151.html" id="dp1568964760385"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-md-6 pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-ha-noi-di-vinh-nghe-an-124t24701.html"><span class="route fl"><small>Hà Nội →</small> Vinh</span></a>
                                                    <span class="price fl">220.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-ha-noi-di-vinh-nghe-an" data-param="124t24701.html" id="dp1568964760386"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-ha-noi-di-hai-phong-124t1271.html"><span class="route fl"><small>Hà Nội →</small> Hải Phòng</span></a>
                                                    <span class="price fl">70.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-ha-noi-di-hai-phong" data-param="124t1271.html" id="dp1568964760387"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-ha-noi-di-thanh-hoa-124t1561.html"><span class="route fl"><small>Hà Nội →</small> Thanh Hóa</span></a>
                                                    <span class="price fl">190.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-ha-noi-di-thanh-hoa" data-param="124t1561.html" id="dp1568964760388"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-ha-noi-di-quang-ninh-124t1491.html"><span class="route fl"><small>Hà Nội →</small> Quảng Ninh</span></a>
                                                    <span class="price fl">80.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-ha-noi-di-quang-ninh" data-param="124t1491.html" id="dp1568964760389"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-ha-noi-di-ha-giang-124t1221.html"><span class="route fl"><small>Hà Nội →</small> Hà Giang</span></a>
                                                    <span class="price fl">200.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-ha-noi-di-ha-giang" data-param="124t1221.html" id="dp1568964760390"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="danang">
                                    <div class="clearfix fix-col">
                                        <div class="col-md-6  pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-thai-binh-115t1541.html"><span class="route fl"><small>Đà Nẵng →</small> Thái Bình</span></a>
                                                    <span class="price fl">360.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-thai-binh" data-param="115t1541.html" id="dp1568964760391"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-da-nang-di-tam-ky-quang-nam-115t25301.html"><span class="route fl"><small>Đà Nẵng →</small> Tam Kỳ</span></a>
                                                    <span class="price fl">250.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-da-nang-di-tam-ky-quang-nam" data-param="115t25301.html" id="dp1568964760392"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-hoi-an-quang-nam-115t25221.html"><span class="route fl"><small>Đà Nẵng →</small> Hội An</span></a>
                                                    <span class="price fl">80.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-hoi-an-quang-nam" data-param="115t25221.html" id="dp1568964760393"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-da-nang-di-hue-thua-thien-hue-115t26471.html"><span class="route fl"><small>Đà Nẵng →</small> Huế</span></a>
                                                    <span class="price fl">89.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-da-nang-di-hue-thua-thien-hue" data-param="115t26471.html" id="dp1568964760394"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-nha-trang-khanh-hoa--115t23591.html"><span class="route fl"><small>Đà Nẵng →</small> Nha Trang</span></a>
                                                    <span class="price fl">235.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-nha-trang-khanh-hoa-" data-param="115t23591.html" id="dp1568964760395"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-md-6 pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-sai-gon-115t1291.html"><span class="route fl"><small>Đà Nẵng →</small> Sài Gòn</span></a>
                                                    <span class="price fl">450.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-sai-gon" data-param="115t1291.html" id="dp1568964760396"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-dak-lak-115t1161.html"><span class="route fl"><small>Đà Nẵng →</small> Đắk Lắk</span></a>
                                                    <span class="price fl">260.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-dak-lak" data-param="115t1161.html" id="dp1568964760397"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-ha-noi-115t1241.html"><span class="route fl"><small>Đà Nẵng →</small> Hà Nội</span></a>
                                                    <span class="price fl">350.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-ha-noi" data-param="115t1241.html" id="dp1568964760398"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-quang-ngai-115t1481.html"><span class="route fl"><small>Đà Nẵng →</small> Quãng Ngãi</span></a>
                                                    <span class="price fl">170.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-quang-ngai" data-param="115t1481.html" id="dp1568964760399"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-da-nang-di-nghe-an-115t1411.html"><span class="route fl"><small>Đà Nẵng →</small> Nghệ An</span></a>
                                                    <span class="price fl">230.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-da-nang-di-nghe-an" data-param="115t1411.html" id="dp1568964760400"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="nhatrang">
                                    <div class="clearfix fix-col">
                                        <div class="col-md-6  pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-nha-trang-khanh-hoa-di-sai-gon-2359t1291.html"><span class="route fl"><small>Nha Trang →</small> Sài Gòn</span></a>
                                                    <span class="price fl">179.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-nha-trang-khanh-hoa-di-sai-gon" data-param="2359t1291.html" id="dp1568964760401"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-can-tho-2359t1131.html"><span class="route fl"><small>Nha Trang →</small> Cần Thơ</span></a>
                                                    <span class="price fl">260.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-can-tho" data-param="2359t1131.html" id="dp1568964760402"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-kon-tum-2359t1341.html"><span class="route fl"><small>Nha Trang →</small> Kon Tum</span></a>
                                                    <span class="price fl">190.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-kon-tum" data-param="2359t1341.html" id="dp1568964760403"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-nha-trang-khanh-hoa-di-da-lat-lam-dong-2359t23991.html"><span class="route fl"><small>Nha Trang →</small> Đà Lạt</span></a>
                                                    <span class="price fl">109.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-nha-trang-khanh-hoa-di-da-lat-lam-dong" data-param="2359t23991.html" id="dp1568964760404"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-da-nang-2359t1151.html"><span class="route fl"><small>Nha Trang →</small> Đà Nẵng</span></a>
                                                    <span class="price fl">235.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-da-nang" data-param="2359t1151.html" id="dp1568964760405"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-md-6 pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-gia-lai-2359t1211.html"><span class="route fl"><small>Nha Trang →</small> Gia Lai</span></a>
                                                    <span class="price fl">190.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-gia-lai" data-param="2359t1211.html" id="dp1568964760406"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-vung-tau-ba-ria-vung-tau-2359t2131.html"><span class="route fl"><small>Nha Trang →</small> Vũng Tàu</span></a>
                                                    <span class="price fl">210.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-vung-tau-ba-ria-vung-tau" data-param="2359t2131.html" id="dp1568964760407">
                                                    <button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-phu-yen-2359t1451.html"><span class="route fl"><small>Nha Trang →</small> Phú Yên</span></a>
                                                    <span class="price fl">70.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-phu-yen" data-param="2359t1451.html" id="dp1568964760408"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-phan-thiet-binh-thuan-2359t2961.html"><span class="route fl"><small>Nha Trang →</small> Phan Thiết</span></a>
                                                    <span class="price fl">179.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-phan-thiet-binh-thuan" data-param="2359t2961.html" id="dp1568964760409">
                                                    <button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-qui-nhon-binh-dinh-2359t2681.html"><span class="route fl"><small>Nha Trang →</small> Quy Nhơn</span></a>
                                                    <span class="price fl">110.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-nha-trang-khanh-hoa-di-qui-nhon-binh-dinh" data-param="2359t2681.html" id="dp1568964760410"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="cantho">
                                    <div class="clearfix fix-col">
                                        <div class="col-md-6  pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-can-tho-di-sai-gon-113t1291.html"><span class="route fl"><small>Cần Thơ →</small> Sài Gòn</span></a>
                                                    <span class="price fl">90.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-can-tho-di-sai-gon" data-param="113t1291.html" id="dp1568964760411"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-can-tho-di-nha-trang-khanh-hoa-113t23591.html"><span class="route fl"><small>Cần Thơ →</small> Nha Trang</span></a>
                                                    <span class="price fl">260.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-can-tho-di-nha-trang-khanh-hoa" data-param="113t23591.html" id="dp1568964760412"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-can-tho-di-ca-mau-113t1121.html"><span class="route fl"><small>Cần Thơ →</small> Cà Mau</span></a>
                                                    <span class="price fl">120.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-can-tho-di-ca-mau" data-param="113t1121.html" id="dp1568964760413"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-can-tho-di-da-nang-113t1151.html"><span class="route fl"><small>Cần Thơ →</small> Đà Nẵng</span></a>
                                                    <span class="price fl">630.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-can-tho-di-da-nang" data-param="113t1151.html" id="dp1568964760414"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-can-tho-di-da-lat-lam-dong-113t23991.html"><span class="route fl"><small>Cần Thơ →</small> Đà Lạt</span></a>
                                                    <span class="price fl">320.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-can-tho-di-da-lat-lam-dong" data-param="113t23991.html" id="dp1568964760415"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-md-6 pl0 pr0">
                                            <ul class="routes-list">
                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-can-tho-di-vung-tau-ba-ria-vung-tau-113t2131.html"><span class="route fl"><small>Cần Thơ →</small> Vũng Tàu</span></a>
                                                    <span class="price fl">100.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-can-tho-di-vung-tau-ba-ria-vung-tau" data-param="113t2131.html" id="dp1568964760416"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-can-tho-di-an-giang-113t111.html"><span class="route fl"><small>Cần Thơ →</small> An Giang</span></a>
                                                    <span class="price fl">50.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-can-tho-di-an-giang" data-param="113t111.html" id="dp1568964760417"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-khach-tu-can-tho-di-ben-tre-113t171.html"><span class="route fl"><small>Cần Thơ →</small> Bến Tre</span></a>
                                                    <span class="price fl">68.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-khach-tu-can-tho-di-ben-tre" data-param="113t171.html" id="dp1568964760418"><button type="button" class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                                <li>
                                                    <a href="/vi-VN/ve-xe-limousine-tu-can-tho-di-rach-gia-kien-giang-113t23741.html"><span class="route fl"><small>Cần Thơ →</small> Rạch Giá</span></a>
                                                    <span class="price fl">110.000 ₫/vé</span>
                                                    <input class="input-txt selectDate hasDatepicker" type="hidden" data-url="/vi-VN/ve-xe-limousine-tu-can-tho-di-rach-gia-kien-giang" data-param="113t23741.html" id="dp1568964760419"><button type="button"
                                                        class="ui-datepicker-trigger">Chọn ngày</button>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Quick Book Area-->

            <!-- About us Area -->
            <div id="about-us" class="about-us-area">
                <div class="container">
                    <div class="section-title">
                        <h2>Bus station</h2>
                        <span class="section-title-bg">Bus station</span>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/images/bx-mien-dong.jpg" alt="image">

                                <h3>Mien Dong Station</h3>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/images/bx-nuoc-ngam.jpg" alt="image">

                                <h3>Nuoc Ngam Station</h3>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="https://kenhhomestay.com/wp-content/uploads/2019/06/ben-xe-giap-bat.jpg" height="243" alt="image">

                                <h3>Giap Bat Station</h3>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/images/bx-my-dinh.jpg" alt="image">

                                <h3>My Dinh Station</h3>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="https://megabus.vn/wp-content/uploads/2018/12/bx-mien-tay_megabus-5-750x410.jpg" alt="image">

                                <h3>Mien Tay Station</h3>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="https://storage.googleapis.com/fe-production/images/bx-gia-lam.jpg" alt="image">

                                <h3>Gia Lam Station</h3>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- End About Us Area -->

            <!-- Contact Area -->
            <div id="contact" class="contact-area">
                <div class="container">
                    <div class="section-title">
                        <h2>Contact</h2>
                        <span class="section-title-bg">About Us</span>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="${pageContext.request.contextPath}/resources/images/logo/main-logo.png" alt="image">

                                <h3>Introduce</h3>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="${pageContext.request.contextPath}/resources/images/logo/main-logo-text.png" alt="image">

                                <h3>Email: nguyendangdcn@gmail.com</h3>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <img src="${pageContext.request.contextPath}/resources/images/logo/main-logo.png" alt="image">

                                <h3>Hotline: 19008198</h3>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- End Contact  Area -->

            <!-- Footer Area -->
            <footer class="footer-area" style="background-color: black">
                <div class="container">
                    <div class="footer-content">
                        <h1>TicketsO</h1>
                        <p>Quick booking your tickets. Easy, quick, book your ticket.</p>

                        <div class="copyright">
                            <span>This is my website. <a href="dcnguyen.ooo">DCN</a></span>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- End Footer Area -->

            <!-- Jquery Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/jquery.min.js"></script>
            <!-- Owl Carousel Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/owl.carousel.min.js"></script>
            <!-- Popper Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/particles.min.js"></script>
            <!-- Bootstrap Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/bootstrap.min.js"></script>
            <!-- Main JS -->
            <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>

            <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
            <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
            <!------ Include the above in your HEAD tag ---------->

            <!------ Include the js for calendar poup ---------->
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.13.0/prism.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.13.0/components/prism-javascript.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.13.0/components/prism-typescript.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.13.0/components/prism-json.min.js"></script>
            <script type="text/javascript" src="https://twemoji.maxcdn.com/2/twemoji.min.js?2.5"></script>
            <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pignose.calendar.full.min.js"></script>

            <script>
                $(function() {

                    function onSelectHandler(date, context) {
                        /**
                         * @date is an array which be included dates(clicked date at first index)
                         * @context is an object which stored calendar interal data.
                         * @context.calendar is a root element reference.
                         * @context.calendar is a calendar element reference.
                         * @context.storage.activeDates is all toggled data, If you use toggle type calendar.
                         * @context.storage.events is all events associated to this date
                         */

                        var $element = context.element;
                        var $calendar = context.calendar;
                        var $box = $element.siblings('.box').show();
                        var text = 'You selected date ';

                        if (date[0] !== null) {
                            text += date[0].format('YYYY-MM-DD');
                        }

                        if (date[0] !== null && date[1] !== null) {
                            text += ' ~ ';
                        } else if (date[0] === null && date[1] == null) {
                            text += 'nothing';
                        }

                        if (date[1] !== null) {
                            text += date[1].format('YYYY-MM-DD');
                        }

                        $box.text(text);
                    }

                    function onApplyHandler(date, context) {
                        /**
                         * @date is an array which be included dates(clicked date at first index)
                         * @context is an object which stored calendar interal data.
                         * @context.calendar is a root element reference.
                         * @context.calendar is a calendar element reference.
                         * @context.storage.activeDates is all toggled data, If you use toggle type calendar.
                         * @context.storage.events is all events associated to this date
                         */

                        var $element = context.element;
                        var $calendar = context.calendar;
                        var $box = $element.siblings('.box').show();
                        var text = 'You applied date ';

                        if (date[0] !== null) {
                            text += date[0].format('YYYY-MM-DD');
                        }

                        if (date[0] !== null && date[1] !== null) {
                            text += ' ~ ';
                        } else if (date[0] === null && date[1] == null) {
                            text += 'nothing';
                        }

                        if (date[1] !== null) {
                            text += date[1].format('YYYY-MM-DD');
                        }

                        $box.text(text);
                    }

                    // Input Calendar
                    $('.input-calendar').pignoseCalendar({
                        apply: onApplyHandler,
                        buttons: true, // It means you can give bottom button controller to the modal which be opened when you click.
                        format: 'YYYY-MM-DD',
                    });

                    $(".ui-datepicker-trigger").click(function() {
                        (document.getElementsByClassName("input-calendar")[0]).click();
                        console.log(a);

                    });

                    // This use for DEMO page tab component.
                    $('.menu .item').tab();
                });
            </script>
        </body>

        </html>