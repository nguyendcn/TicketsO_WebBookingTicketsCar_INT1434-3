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
            <!--Font-Awesome-->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/font-awesome/4.7.0/css/font-awesome.min.css">
            <!-- Style CSS -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index-style.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/choose-route.css">

            <title>TicketsO | Bus Online Booking Services</title>

            <link rel="icon" type="image/png" href="img/favicon.png">

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

            <!--Space Area-->
            <div class="space-area">

            </div>
            <!--End Space Area-->

            <!-- Header Section -->
            <header id="header-route">
                <div class="container-route">
                    <div class="col-md-12 col-sm-12 col-xs-12 mt10 date-container ">
                        <div class="row header-row">
                            <div class="col-md-6 hidden-sm hidden-xs">
                                <h1 class="title-text-route">
                                    <span class="hidden-xs hidden-sm">Vé xe từ</span> Sài Gòn đến Hà Nội </h1>
                            </div>
                            <div class="col-md-6 hidden-sm hidden-xs">
                                <h6 class="mt0 route-title hidden-sm hidden-xs route-title-bus-ticket">
                                    <span class="mt0 mb0 text-gray"><a href="/">Vé xe khách</a> &gt;<a href="/vi-VN/ve-xe-khach-tu-sai-gon-di-ha-noi-129t1241.html">xe đi Hà Nội từ Sài Gòn </a></span>

                                </h6>
                                <input id="routeName" type="hidden" value="Sài Gòn - Hà Nội">
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- End Header Section-->

            <!--Search Area-->
            <div class="search-area">
                <div id="dvSearchTicket" class="ticket-search-filter ">
                    <div class="container-route desktop-route-search hidden-xs hidden-sm">
                        <form id="searchForm" class="form-inline">
                            <input type="hidden" id="search-busoperator-id" value="0">
                            <input type="hidden" id="search-busoperator-name">
                            <div class="form-group">
                                <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><input onfocus="this.select();" onmouseup="return false;" id="departPlace" name="departPlace" type="text" class="ui-autocomplete-input location-search"
                                    placeholder="Gõ vào nơi đi" accesskey="1" tabindex="1" autocomplete="off" value="Sài Gòn">
                                <input type="hidden" id="start-point-type" value="1">
                                <input type="hidden" id="start-point-id" value="29">
                            </div>
                            <div class="form-group hidden-xs">
                                <a href="#" class="switchButton">⇌</a>
                            </div>
                            <div class="form-group">
                                <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><input onfocus="this.select();" onmouseup="return false;" id="destination" name="destination" type="text" class="ui-autocomplete-input location-search"
                                    placeholder="Gõ vào nơi đến" accesskey="2" tabindex="2" autocomplete="off" value="Hà Nội">
                                <input type="hidden" id="stop-point-type" value="1">
                                <input type="hidden" id="stop-point-id" value="24">

                            </div>
                            <div class="form-group departDate-fg">
                                <i class="fa fa-caret-left" id="mbtPrevDate"></i>
                                <i class="fa fa-caret-right" id="mbtNextDate"></i>
                                <input id="departDate" readonly="" name="departDate" type="text" class="date calendar-search hasDatepicker" placeholder="Chọn ngày đi" accesskey="1" tabindex="3" value="04-10-2019">
                                <div class="form-group quick-date-select fr hidden-xs hidden-sm">
                                    <button id="btToday" type="button" class="fl btn btn-gray btn-today">Hôm nay</button>
                                    <button id="btTomorrow" type="button" class="fl btn btn-gray btn-tomorrow">
                                        Ngày mai
                                    </button>
                                </div>
                            </div>
                            <div class="form-group pull-right">
                                <button id="searchSubmit" name="searchSubmit" type="submit" class="submit-btn btn  search-btn" tabindex="4">
                                    Tìm Vé Xe Rẻ
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="mobi-display hidden-ms" style="display:none;">

                    </div>
                </div>
            </div>
            <!--End Search Area-->

            <!--Content Search Area-->
            <div class="content-search-area">
                <section class="searchResults">
                    <div id="main">
                        <div id="replaceDiv">
                            <div class="searchResults">
                                <ul class="result-list" style="margin: 0px;">
                                    <li class="result-item col-12 col-md-12 col-xs-12">
                                        <div class="container-route">
                                            <div style="display: none" id="04102019-00601410"></div>
                                            <div class="hidden-xs">
                                                <div class="col-2 col-md-2 col-sm-3 col-xs-2">
                                                    <div class="row">
                                                        <div class="pull-left comp-name-container">
                                                            <h6 class="mt0 mb10 comp-name-title  text-gray3" title="Tiến Tiến">Tiến Tiến</h6>
                                                            <div class="col-lg-12 service-plus-in hidden-xs">
                                                                <img src="https://storage.googleapis.com/fe-production/images/wifi.svg">
                                                                <img src="https://storage.googleapis.com/fe-production/images/Water.svg">
                                                            </div>
                                                            <ul class="busInfo hidden-sm hidden-xs hinh-anh">
                                                                <li style="width:65px;">
                                                                    <a class="ml5 ticket-detail-tab-link text-route-link hover-orange-border hover-blue-text" href="#" data-tab="hinhanh" data-text="Hình ảnh">
                                    Hình ảnh
                                </a>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="col-4 col-md-5 col-lg-4 col-sm-3 col-xs-4 hidden-xs detail-route">
                                                    <div class="col-12 ml10" style="text-align:center;">
                                                        <div class="col-5 col-md-5 col-sm-12 text-left-from">
                                                            <h6 class="span-from-time mt0 mb5" data-busticketstatus="2" data-workingtime="True" data-istetticket="0" data-tripid="2741969" data-pickupdate="06:00 04-10-2019">
                                                                06:00
                                                            </h6>
                                                        </div>
                                                        <div class="col-2 col-md-2 col-sm-12 text-left" style="padding:0;">
                                                            <i class="text-gray3 left-arrow" style="display: inline-block;margin-top:-10px;line-height:15px;font-size:12px;text-align:center;">
                            32h10'
                            <br>
                            <img style="width:45px;height:10px;" src="https://storage.googleapis.com/fe-production/images/from-to2.png">
                            <br>
                            dự kiến
                        </i>
                                                        </div>
                                                        <div class="col-5 col-md-5 col-sm-12 text-left-to">
                                                            <h6 class="span-to-time-mobi mt0 mb5 text-gray3" data-busticketstatus="2" data-workingtime="True" data-istetticket="0">
                                                                14:10
                                                            </h6>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <div class="pull-left hidden-sm" style="width:100%;">
                                                            <div class="col-5 col-md-5 col-sm-5 text-left">
                                                                <a class="depart-station ticket-detail-tab-link text-route-link hover-orange-border hover-blue-text" style="color:#333" data-appended="0" data-trip-id="2741969" data-time="06:00" data-tripcode="v2CKitCRCRBhoCMDYiAjAwMNGtpwE6CjA0LTEwLTIwMTlIHVAY" data-id="153256"
                                                                    data-value="Bến xe Miền Đông - quầy vé 51" href="#" onclick="return false;" data-tab="banggia" data-text="Bến xe..." data-toggle="tooltip" title="292 Đinh Bộ Lĩnh - Bình Thạnh - Hồ Chí Minh">
                                Bến xe Miền Đông...
                            </a>
                                                            </div>
                                                            <div class="col-2 col-md-2 col-sm-2 hidden-xs hidden-sm payoo-mt2 total-time-text"></div>
                                                            <div class="col-5 col-md-5 col-sm-5 payoo-mt2 text-left">
                                                                <a class="destination-station ticket-detail-tab-link text-route-link hover-orange-border hover-blue-text" style="color:#333" data-appended="0" data-trip-id="2741969" data-tripcode="v2CKitCRCRBhoCMDYiAjAwMNGtpwE6CjA0LTEwLTIwMTlIHVAY" data-time="06:00"
                                                                    data-id="785" data-value="Bến xe Giáp Bát" href="#" onclick="return false;" data-tab="banggia" data-text="Bến xe..." data-toggle="tooltip" title="Đường Giải Phóng, Giáp Bát - Hoàng Mai - Hà Nội">
                                Bến xe Giáp Bát
                            </a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-2 col-md-2 col-sm-3 col-xs-2">
                                                    <div class="vehicle-type-p mb3 text-left text-gray3" data-value="39" style="margin-bottom:3px !important">
                                                        Giường nằm 44 chỗ
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="service-call seats-text text-left mt15">
                                                        <span class="">20</span> Ghế trống
                                                    </div>
                                                </div>

                                                <div class="text-right pr0 col-md-3 col-sm-3 col-xs-2 col-lg-2">
                                                    <meta content="700.000">
                                                    <h6 data-value="700000" class="mt0 price 14">
                                                        700.000 <small style="vertical-align: top;" class="unit-price-small">đ</small>
                                                    </h6>
                                                    <p style="margin:0;">
                                                        <a id="" class="ticket-ac-btn btn-vxr-lg btn pull-right w100 hasSeat closed online-button" href="#04102019-00601410" title="Nhấp để đặt vé" onclick="ga('send', 'event', 'Đặt vé', 'click','Đặt vé tại Tuyến đường Sài Gòn đi Hà Nội nhà xe Tiến Tiến')">Chọn chỗ</a>
                                                        <a style="display: none;" title="Nhấp để đóng lại" href="javascript:;" class="ticket-ac-btn btn btn-lg btn-vxr-gray-lg w100 open online-button">Đóng lại</a>
                                                    </p>
                                                </div>

                                                <div class="col-12 col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                    <i>*Thuộc chuyến 06:00 04-10-2019 Sài Gòn - Thanh Hóa - Hà Nội</i>
                                                </div>
                                            </div>

                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!--End Content Search Area-->

            <!--Route Point Area-->
            <div class="route-point-area">
                <div class="road-point hidden-xs">
                    <div class="clearfix route-illus row text-center">
                        <div class="col-md-12">
                            <div class="container">
                                <div class="row" style="flex-wrap: unset;">
                                    <div class=" col-md-6 col-sm-6 border-note right-detail ">
                                        <h2 class="mt10 text-center title-road-backlink mb0 ">
                                            Thông tin tuyến đường Hồ Chí Minh đi Hà Nội
                                        </h2>
                                        <ul class="list-detail-route ">
                                            <li>
                                                <p class="col-md-6 col-sm-6 text-left ">Chiều dài tuyến đường :</p>
                                                <p class="col-md-6 text-right "><b>1394 km</b> </p>
                                            </li>
                                            <li>
                                                <p class="col-md-6 col-sm-6 text-left ">Thời gian di chuyển :</p>
                                                <p class="col-md-6 text-right "><b>32 giờ</b> </p>
                                            </li>
                                            <li>
                                                <p class="col-md-6 col-sm-6 text-left ">Giá vé trung bình :</p>
                                                <p class="col-md-6 text-right "><b>780.000 VNĐ</b> </p>
                                            </li>
                                            <li>
                                                <p class="col-md-6 col-sm-6 text-left ">Số lượng chuyến xe :</p>
                                                <p class="col-md-6 text-right "><b>12 chuyến</b> </p>
                                            </li>
                                            <li style="border:0 ">
                                                <p class="col-md-6 col-sm-6 text-left ">Số lượng nhà xe :</p>
                                                <p class="col-md-6 text-right "><b>15 nhà xe</b> </p>
                                            </li>
                                        </ul>
                                        <div class="price-road-backlink border-line-detail "></div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 border-note right-detail " style="margin-right: 0; float: right; ">
                                        <h3 class="mt10 text-center title-road-backlink mb0 ">
                                            <span>Đặt vé xe khách, xe limousine các hãng xe từ Hồ Chí Minh đến Hà Nội</span>
                                        </h3>
                                        <table class="table seo-table ">
                                            <thead>
                                                <tr>
                                                    <th height="45 " class="text-left">NHÀ XE</th>
                                                    <th height="45 " class="text-center ">GIÁ VÉ TRUNG BÌNH</th>
                                                    <th height="45 " class="text-left">GIỜ CHẠY</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td height="30 ">
                                                        <p class="text-left ">Tiến Tiến</p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class=" ">700.000 <small style="vertical-align: top; " class="unit-price-small ">đ</small></p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class="text-left ">06h00</p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="30 ">
                                                        <p class="text-left ">Hoàng Long</p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class=" ">720.000 <small style="vertical-align: top; " class="unit-price-small ">đ</small></p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class="text-left ">07h00, 17h30, 20h30</p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="30 ">
                                                        <p class="text-left ">Mai Linh</p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class=" ">775.000 <small style="vertical-align: top; " class="unit-price-small ">đ</small></p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class="text-left ">09h00, 15h00</p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="30 ">
                                                        <p class="text-left ">Thu Trang</p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class=" ">700.000 <small style="vertical-align: top; " class="unit-price-small ">đ</small></p>
                                                    </td>
                                                    <td height="30 ">
                                                        <p class="text-left ">13h00</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="price-road-backlink border-line-detail "></div>

                                    </div>
                                </div>
                                <div class="row " style="margin-top: 10px; ">
                                    <div class="col-md-12 col-sm-12 border-note " style="padding:10px; ">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bus-preloader ">
                        <div class="preloader_horizontal ">
                            <div class="animate_element ">
                                <div class="animate_bus "></div>
                                <div class="smoke ">
                                    <div class="smoke_item smoke_item1 "></div>
                                    <div class="smoke_item smoke_item2 "></div>
                                    <div class="smoke_item smoke_item3 "></div>
                                    <div class="smoke_item smoke_item4 "></div>
                                </div>
                            </div>
                        </div>
                        <div class="road ">
                            <span>Lộ trình khoảng: 1394 km</span>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Route Point Area-->

            <!-- Footer Area -->
            <footer class="footer-area " style="background-color: black ">
                <div class="container ">
                    <div class="footer-content ">
                        <h1>Hihi</h1>
                        <p>It has purpose oriented design and it is suitable for users with zero programming skills as well as advanced developers.</p>

                        <div class="copyright ">
                            <span>This is my website. <a href="dcnguyen.ooo ">DCN</a></span>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- End Footer Area -->

            <!-- Jquery Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/jquery.min.js "></script>
            <!-- Owl Carousel Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/owl.carousel.min.js "></script>
            <!-- Popper Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/particles.min.js "></script>
            <!-- Bootstrap Min JS -->
            <script src="${pageContext.request.contextPath}/resources/core/index-page/js/bootstrap.min.js "></script>
            <!-- Main JS -->
            <script src="${pageContext.request.contextPath}/resources/js/index.js "></script>
        </body>

        </html>