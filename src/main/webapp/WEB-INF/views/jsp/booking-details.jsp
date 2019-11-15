<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Insert title here</title>
                <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/route-styles.min.css">


                <!-- Jquery Min JS -->
                <script src="${pageContext.request.contextPath}/resources/core/index-page/js/jquery.min.js "></script>

                <script>
                    $(document).ready(function() {



                        $(".cd-ghe").click(function() {
                            var current = this;

                            if ($(current).hasClass("seat-chosen"))
                                return;

                            if (($(current).hasClass("isSleeper"))) {
                                $(current).removeClass("isSleeper");
                                $(current).find("#Rectangle_615").css("fill", "#fff");

                                var seatCode = $(current).attr("seat-code");
                                var listSeatCode = $(".seat-template-seat-code").text();
                                listSeatCode = listSeatCode.replace(seatCode + ",", "");
                                $(".seat-template-seat-code").text(listSeatCode);
                                $(".seat-template-seat-code-hidden").val(listSeatCode);

                                var seatPrice = parseInt($(current).attr("seat-price"));
                                var currentPrice = parseInt($(".seat-template-total-fare").text());
                                $(".seat-template-total-fare").text((parseInt(currentPrice - (seatPrice))));

                            } else {
                                $(current).addClass("isSleeper");
                                $(current).find("#Rectangle_615").css("fill", "red");

                                var seatCode = $(current).attr("seat-code");
                                var listSeatCode = $(".seat-template-seat-code").text();
                                $(".seat-template-seat-code").text(seatCode + ", " + listSeatCode);
                                $(".seat-template-seat-code-hidden").val(seatCode + ", " + listSeatCode);

                                var seatPrice = parseInt($(current).attr("seat-price"));
                                var currentPrice = parseInt($(".seat-template-total-fare").text());
                                $(".seat-template-total-fare").text((parseInt(currentPrice + (seatPrice))));
                            }
                            //console.log(($(current).find("#"));

                        });

                        $("#fromstart").click(function() {
                            console.log("from start");
                        });

                        $("#toend").click(function() {
                            console.log("to end");
                        });
                    });
                </script>
            </head>

            <body>
                <div class="container">
                    <div class="booking-expand clearfix">
                        <form:form action="checkout" method="POST" class="frmSeatSelection form-horizontal col-12 col-md-12 col-xs-12" modelAttribute="bookingInfo">
                            <form:hidden path="id_tour" val="${bookingInfo.id_tour}" />
                            <div class="seat-template-table table-noborder mb0">
                                <div class="title-seat">
                                    <div class="col-md-4 col-lg-4" style="position:relative;">1 - CHỌN CHỖ <span class="btn btn-close-road hidden-lg hidden-md"><img src="https://storage.googleapis.com/fe-production/images/closed-white.svg" alt=""></span></div>
                                    <div class="col-md-4 col-lg-4">2 - CHỌN ĐIỂM ĐI/ĐIỂM ĐẾN</div>
                                    <div class="col-md-4 col-lg-4">3 - THÔNG TIN KHÁCH HÀNG <span class="btn btn-close-road btn-close-road-phone"><img src="https://storage.googleapis.com/fe-production/images/closed.svg" alt=""></span></div>
                                </div>
                                <div class="detail-booking" style="height: 477px; min-height: 370px;">
                                    <div class="col-md-4 col-lg-4  seat-template-col" style="margin-bottom: 100px; min-height: 370px;">
                                        <table class="color-seat table table-noborder mb0" style="background: #E8E8E8;">
                                            <tbody>
                                                <tr class="seat-guid-row" style="border-bottom:1px solid #ddd">
                                                    <td>
                                                        <p class="mb0">
                                                        </p>
                                                        <div class="ml5" style="display: inline-block;width: 15px;height: 15px;border: 1px solid #919191;float:left;margin-right:5px;background-color:#fff;"></div> <span style="float:left;">Ghế trống</span>
                                                        <p></p>
                                                    </td>
                                                    <td>
                                                        <p class="mb0">
                                                        </p>
                                                        <div class="ml5" style="display: inline-block;width: 15px;height: 15px;border: 1px solid #CFCFCF;background-color:#CFCFCF;float:left;margin-right:5px;"></div> <span style="float:left;">Ghế không bán</span>
                                                        <p></p>
                                                    </td>
                                                    <td>
                                                        <p class="mb0">
                                                        </p>
                                                        <div class="ml5" style="display: inline-block;width: 15px;height: 15px;border: 1px solid  red;background-color:red;float:left;margin-right:5px;"></div> <span style="float:left;">Đang chọn</span>
                                                        <p></p>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>

                                        <div class="cd-sodoghe " style="margin-top:10px;margin-top:10px;">
                                            <table class="table-layout-sodoghe table mb0" width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tbody>
                                                    <tr>
                                                        <td width="40"></td>

                                                        <c:forEach items="${seatAT}" var="seat">
                                                            <td>
                                                                <div id="${seat.id}" class="cd-ghe ${seat.status_id == 2 ?'seat-chosen':''}" seat-code="${seat.name}" seat-price="720000" data-toggle="tooltip" data-placement="top" title="Số ghế: ${seat.name}, Giá: 720000">
                                                                    <a href="javascript:;">
                                                                        <span class="cd-so-ghe">
                                                                <div class="img-responsive bed-img" data-img-name="sleeper.svg?v=11" data-isvisible="True" data-color="">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="44" height="28" viewBox="0 0 44 28" class="svg bed-img replaced-svg">
                                                                        <g id="Group_4650" data-name="Group 4650" transform="translate(-5879 1387) rotate(-90)">
                                                                            <g id="Rectangle_615" data-name="Rectangle 615" transform="translate(1359 5879)" fill="${seat.status_id == 2 ?'#CFCFCF':'#fff'}" stroke="#000" stroke-width="0.5">
                                                                                <rect width="28" height="44" rx="4" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="27.5" height="43.5" rx="3.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_767" data-name="Rectangle 767" transform="translate(1361 5879)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="24" height="34" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="23.5" height="33.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_616" data-name="Rectangle 616" transform="translate(1365 5915)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="16" height="8" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="15.5" height="7.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                </div>
                                                            </span>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </c:forEach>
                                                    </tr>
                                                    <tr>
                                                        <td width="40"></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="40"></td>

                                                        <c:forEach items="${seatBT}" var="seat">
                                                            <td>
                                                                <div id="${seat.id}" class="cd-ghe ${seat.status_id == 2 ?'seat-chosen':''}" seat-code="${seat.name}" seat-price="720000" data-toggle="tooltip" data-placement="top" title="Số ghế: ${seat.name}, Giá: 720000">
                                                                    <a href="javascript:;">
                                                                        <span class="cd-so-ghe" style="fill: rgb(186, 223, 65);">
                                                                <div class="img-responsive bed-img" data-img-name="sleeper.svg?v=11" data-isvisible="True" data-color="">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="44" height="28" viewBox="0 0 44 28" class="svg bed-img replaced-svg">
                                                                        <g id="Group_4650" data-name="Group 4650" transform="translate(-5879 1387) rotate(-90)">
                                                                            <g id="Rectangle_615" data-name="Rectangle 615" transform="translate(1359 5879)" fill="${seat.status_id == 2 ?'#CFCFCF':'#fff'}" stroke="#000" stroke-width="0.5">
                                                                                <rect width="28" height="44" rx="4" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="27.5" height="43.5" rx="3.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_767" data-name="Rectangle 767" transform="translate(1361 5879)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="24" height="34" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="23.5" height="33.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_616" data-name="Rectangle 616" transform="translate(1365 5915)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="16" height="8" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="15.5" height="7.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                </div>
                                                            </span>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </c:forEach>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td width="40"></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="40"></td>
                                                        <c:forEach items="${seatCT}" var="seat">
                                                            <td>
                                                                <div id="${seat.id}" class="cd-ghe ${seat.status_id == 2 ?'seat-chosen':''}" seat-code="${seat.name}" seat-price="720000" data-toggle="tooltip" data-placement="top" title="Số ghế: ${seat.name}, Giá: 720000">
                                                                    <a href="javascript:;">
                                                                        <span class="cd-so-ghe" style="fill: rgb(186, 223, 65);">
                                                                <div class="img-responsive bed-img" data-img-name="sleeper.svg?v=11" data-isvisible="True" data-color="">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="44" height="28" viewBox="0 0 44 28" class="svg bed-img replaced-svg">
                                                                        <g id="Group_4650" data-name="Group 4650" transform="translate(-5879 1387) rotate(-90)">
                                                                            <g id="Rectangle_615" data-name="Rectangle 615" transform="translate(1359 5879)" fill="${seat.status_id == 2 ?'#CFCFCF':'#fff'}" stroke="#000" stroke-width="0.5">
                                                                                <rect width="28" height="44" rx="4" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="27.5" height="43.5" rx="3.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_767" data-name="Rectangle 767" transform="translate(1361 5879)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="24" height="34" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="23.5" height="33.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_616" data-name="Rectangle 616" transform="translate(1365 5915)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="16" height="8" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="15.5" height="7.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                </div>
                                                            </span>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </c:forEach>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="coach-name">Tầng 2</div>

                                        </div>
                                        <div class="cd-sodoghe mt10" style="margin-top:10px;margin-top:10px;">
                                            <table class="table-layout-sodoghe table mb0" width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tbody>

                                                    <tr>
                                                        <td width="40"></td>

                                                        <c:forEach items="${seatAD}" var="seat">
                                                            <td>
                                                                <div id="${seat.id}" class="cd-ghe ${seat.status_id == 2 ?'seat-chosen':''}" seat-code="${seat.name}" seat-price="720000" data-toggle="tooltip" data-placement="top" title="Số ghế: ${seat.name}, Giá: 720000">
                                                                    <a href="javascript:;">
                                                                        <span class="cd-so-ghe" style="fill: rgb(186, 223, 65);">
                                                                <div class="img-responsive bed-img" data-img-name="sleeper.svg?v=11" data-isvisible="True" data-color="">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="44" height="28" viewBox="0 0 44 28" class="svg bed-img replaced-svg">
                                                                        <g id="Group_4650" data-name="Group 4650" transform="translate(-5879 1387) rotate(-90)">
                                                                            <g id="Rectangle_615" data-name="Rectangle 615" transform="translate(1359 5879)" fill="${seat.status_id == 2 ?'#CFCFCF':'#fff'}" stroke="#000" stroke-width="0.5">
                                                                                <rect width="28" height="44" rx="4" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="27.5" height="43.5" rx="3.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_767" data-name="Rectangle 767" transform="translate(1361 5879)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="24" height="34" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="23.5" height="33.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_616" data-name="Rectangle 616" transform="translate(1365 5915)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="16" height="8" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="15.5" height="7.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                </div>
                                                            </span>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </c:forEach>

                                                    </tr>
                                                    <tr>
                                                        <td width="40"></td>

                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td width="40"></td>

                                                        <c:forEach items="${seatBD}" var="seat">
                                                            <td>
                                                                <div id="${seat.id}" class="cd-ghe ${seat.status_id == 2 ?'seat-chosen':''}" seat-code="${seat.name}" seat-price="720000" data-toggle="tooltip" data-placement="top" title="Số ghế: ${seat.name}, Giá: 720000">
                                                                    <a href="javascript:;">
                                                                        <span class="cd-so-ghe" style="fill: rgb(186, 223, 65);">
                                                                <div class="img-responsive bed-img" data-img-name="sleeper.svg?v=11" data-isvisible="True" data-color="">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="44" height="28" viewBox="0 0 44 28" class="svg bed-img replaced-svg">
                                                                        <g id="Group_4650" data-name="Group 4650" transform="translate(-5879 1387) rotate(-90)">
                                                                            <g id="Rectangle_615" data-name="Rectangle 615" transform="translate(1359 5879)" fill="${seat.status_id == 2 ?'#CFCFCF':'#fff'}" stroke="#000" stroke-width="0.5">
                                                                                <rect width="28" height="44" rx="4" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="27.5" height="43.5" rx="3.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_767" data-name="Rectangle 767" transform="translate(1361 5879)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="24" height="34" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="23.5" height="33.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_616" data-name="Rectangle 616" transform="translate(1365 5915)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="16" height="8" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="15.5" height="7.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                </div>
                                                            </span>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </c:forEach>
                                                    </tr>
                                                    <tr>
                                                        <td width="40"></td>

                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="vm">
                                                            <img width="20" class="img-responsive wheel-img" src="https://storage.googleapis.com/fe-production/images/Route/steering-wheel.svg">
                                                        </td>

                                                        <c:forEach items="${seatCD}" var="seat">
                                                            <td>
                                                                <div id="${seat.id}" class="cd-ghe ${seat.status_id == 2 ?'seat-chosen':''}" seat-code="${seat.name}" seat-price="720000" data-toggle="tooltip" data-placement="top" title="Số ghế: ${seat.name}, Giá: 720000">
                                                                    <a href="javascript:;">
                                                                        <span class="cd-so-ghe" style="fill: rgb(186, 223, 65);">
                                                                <div class="img-responsive bed-img" data-img-name="sleeper.svg?v=11" data-isvisible="True" data-color="">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="44" height="28" viewBox="0 0 44 28" class="svg bed-img replaced-svg">
                                                                        <g id="Group_4650" data-name="Group 4650" transform="translate(-5879 1387) rotate(-90)">
                                                                            <g id="Rectangle_615" data-name="Rectangle 615" transform="translate(1359 5879)" fill="${seat.status_id == 2 ?'#CFCFCF':'#fff'}" stroke="#000" stroke-width="0.5">
                                                                                <rect width="28" height="44" rx="4" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="27.5" height="43.5" rx="3.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_767" data-name="Rectangle 767" transform="translate(1361 5879)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="24" height="34" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="23.5" height="33.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                            <g id="Rectangle_616" data-name="Rectangle 616" transform="translate(1365 5915)" fill="#fff" stroke="#000" stroke-width="0.5">
                                                                                <rect width="16" height="8" rx="2" stroke="none"></rect>
                                                                                <rect x="0.25" y="0.25" width="15.5" height="7.5" rx="1.75" fill="none"></rect>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                </div>
                                                            </span>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </c:forEach>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="coach-name">Tầng 1</div>

                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4 td-info-detail hidden-xs" style="padding-top: 10px; border-right: 1px solid rgb(238, 238, 238) !important; min-height: 370px;">
                                        <div class="container-fluid customer-info-title hidden-lg hidden-md hidden-sm">
                                            <h4>2. CHỌN ĐIỂM ĐI/ĐIỂM ĐẾN →</h4>
                                        </div>
                                        <div class="detail-customer-info">
                                            <ul class="nav nav-tabs">
                                                <li class="active"><a data-toggle="tab" href="#fromstart" aria-expanded="true">Điểm đi</a></li>
                                                <li class=""><a data-toggle="tab" href="#toend" aria-expanded="false">Điểm đến</a></li>

                                            </ul>
                                            <div class="tab-content">
                                                <div id="fromstart" class="tab-pane fade active in">
                                                    <div class="detail-address detail-address-pc" style="height: 412px;">
                                                        <div class="radio">
                                                            <p class="list-title pickup-title">Điểm đón:</p>
                                                            <ul class="pickup-transfer-list pickup-list">
                                                                <li class="item-info pickup-item">
                                                                    <label>
                                                                            <input type="radio" class="event-pickup-transfer-select" name="pickup-transfer-select-from" data-pointtype="pickup" data-pickupname="(107) VP HCM - 44 QL 13 - Hiệp Bình Chánh - Thủ Đức - TP HCM" data-pickupindex="0" data-pickuptime="0" data-pickupid="0" data-address="" data-note="" data-unfixedpoint="0" data-pickupdeparttime="07:00 13-11-2019" data-surcharge="0" data-surchargetype="0" data-seattype="online" data-atarrive="0" data-pickupdisplay="07:00 - (107) VP HCM - 44 QL 13 - Hiệp Bình Chánh - Thủ Đức - TP HCM" data-min_customer="">
                                                                            07:00 - (107) VP HCM - 44 QL 13 - Hiệp Bình Chánh - Thủ Đức - TP HCM
                                                                        </label>

                                                                    <div class="div-note" style="display: none; overflow: auto; padding-left: 13px; padding-top: 6px;">
                                                                        <div class="col-md-8 col-sm-8 pl0 pr0">
                                                                            <label class="info-note text-red" style="font-weight: normal"></label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group div-address-unfixed" style="display: none;">
                                                                        <div class="col-md-12 col-sm-12" style="padding-left: 36px !important; padding-right: 20px;">
                                                                            <label class="col-md-12 pl0 pr0 col-sm-3 control-label text-left hidden-xs">Nhập địa chỉ điểm đón <span id="pickupNameSelected"></span></label>
                                                                            <div class="col-md-9 col-sm-9 pr0 pl0">
                                                                                <input class="address-unfixed-input form-control input-vxr" type="text" value="" placeholder="Nhập tối đa 240 kí tự">
                                                                                <label class="address-unfixed-input-validate-message text-red" style="display:none">Địa chỉ nhập vượt quá 240 kí tự. </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="item-info pickup-item">
                                                                    <label>
                                                                            <input type="radio" class="event-pickup-transfer-select" name="pickup-transfer-select-from" data-pointtype="pickup" data-pickupname="(108) BX Miền Đông - Quầy vé 73" data-pickupindex="1" data-pickuptime="0" data-pickupid="0" data-address="" data-note="" data-unfixedpoint="0" data-pickupdeparttime="07:00 13-11-2019" data-surcharge="0" data-surchargetype="0" data-seattype="online" data-atarrive="0" data-pickupdisplay="07:00 - (108) BX Miền Đông - Quầy vé 73" data-min_customer="">
                                                                            07:00 - (108) BX Miền Đông - Quầy vé 73
                                                                        </label>

                                                                    <div class="div-note" style="display: none; overflow: auto; padding-left: 13px; padding-top: 6px;">
                                                                        <div class="col-md-8 col-sm-8 pl0 pr0">
                                                                            <label class="info-note text-red" style="font-weight: normal"></label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group div-address-unfixed" style="display: none;">
                                                                        <div class="col-md-12 col-sm-12" style="padding-left: 36px !important; padding-right: 20px;">
                                                                            <label class="col-md-12 pl0 pr0 col-sm-3 control-label text-left hidden-xs">Nhập địa chỉ điểm đón <span id="pickupNameSelected"></span></label>
                                                                            <div class="col-md-9 col-sm-9 pr0 pl0">
                                                                                <input class="address-unfixed-input form-control input-vxr" type="text" value="" placeholder="Nhập tối đa 240 kí tự">
                                                                                <label class="address-unfixed-input-validate-message text-red" style="display:none">Địa chỉ nhập vượt quá 240 kí tự. </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="toend" class="tab-pane fade">
                                                    <div class="detail-address detail-address-pc" style="height: 412px;">
                                                        <div class="radio">
                                                            <p class="list-title">Điểm trả:</p>
                                                            <ul class="pickup-transfer-list ">
                                                                <li class="item-info dropoff-item">
                                                                    <label style="font-weight: normal">
                                                                            <input type="radio" class="event-pickup-transfer-select" name="pickup-transfer-select-to" data-pointtype="dropoff-at-arrive" data-transfername="Hà Nội" data-transferindex="0" data-transfertime="2040" data-transferid="0" data-address="" data-note="" data-unfixedpoint="0" data-surcharge="0" data-surchargetype="0" data-seattype="online" data-atarrive="1" data-pickupdisplay="17:00 - Hà Nội" data-min_customer="">
                                                                            17:00 - Hà Nội
                                                                        </label>
                                                                    <div class="div-note" style="display: none; overflow: auto; padding-left: 13px; padding-top: 6px;">
                                                                        <div class="col-md-8 col-sm-8 pl0 pr0">
                                                                            <label class="info-note text-red" style="font-weight: normal"></label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="div-address-unfixed form-group" style="display: none; padding-left: 36px; padding-right: 20px; overflow: auto;">
                                                                        <div class="col-md-12 col-sm-12 pl0 pr0">
                                                                            <label class="col-md-12 pl0 pr0 col-sm-3 control-label text-left hidden-xs">Địa chỉ điểm trả <span id="dropOffAtArriveNameSelected"></span></label>
                                                                            <div class="col-md-9 col-sm-9 pr0 pl0">
                                                                                <input type="text" class="address-unfixed-input form-control input-vxr" value="" placeholder="Nhập tối đa 240 kí tự">
                                                                                <label class="address-unfixed-input-validate-message text-red" style="display:none">Địa chỉ nhập vượt quá 240 kí tự. </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="notesaoviettuyenhnsapa">Ghi chú: Hành khách sẽ được chuyên chở đến Lào Cai trên xe này và sau đó sẽ được trung chuyển từ Lào Cai lên Sapa bằng xe 16 chỗ, 24 chỗ hoặc 29 chỗ.</p>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-lg-4 customer-info-col">
                                        <div class="detail-customer-info">
                                            <div class="detail-customer-info">
                                                <div class="form-group CustomerFullName">
                                                    <div class="col-md-12 col-sm-12 pl0 pr0">
                                                        <label class="col-md-12 pl0 pr0 col-sm-3 control-label text-left multiple-info-note" style="display: none;">Thông tin hành khách 1:</label>
                                                        <label class="col-md-12 pl0 pr0 col-sm-3 control-label text-left hidden-xs">Họ tên <span style="color:red;">*</span>:</label>
                                                        <form:input path="name" id="cfn" name="CustomerFullName" class="form-control input-vxr" placeholder="Họ tên" data-toggle="popover" data-content="Họ tên không hợp lệ" data-placement="top" />
                                                        <p id="name-error" class="error-ms">Họ tên không hợp lệ</p>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12 col-sm-12 pl0 pr0">
                                                        <label class="col-md-8 pl0 pr0 control-label text-left hidden-xs">Số điện thoại người đi <span style="color:red;">*</span>:</label>

                                                        <form:input path="numberPhone" id="cp" name="CustomerPhone" class="form-control input-vxr error-check" placeholder="Số điện thoại Việt Nam của người đi: 0912345678" data-toggle="popover" data-content="Vui lòng nhập đúng định dạng (VD: 0912345678)" data-placement="left"
                                                        />
                                                        <p id="phone-error" class="error-ms" style="display: none;">Vui lòng nhập đúng định dạng (VD: 0912345678)</p>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12 col-sm-12 pl0 pr0">
                                                        <label for="inputEmail3" class="col-md-12 pl0 pr0 col-sm-3 control-label text-left hidden-xs">Email <span style="color:red;">*</span>:</label>

                                                        <form:input path="email" id="ce" name="CustomerEmail" class="form-control input-vxr" placeholder="Email" data-toggle="popover" data-content="Email không hợp lệ" data-placement="left" />
                                                        <p id="email-error" class="error-ms">Email không hợp lệ</p>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12 col-sm-12 pl0 pr0">
                                                        <label for="inputnote3" class="col-md-12 pl0 pr0 col-sm-3 control-label text-left hidden-xs">Ghi Chú:</label>

                                                        <form:textarea path="description" id="note" name="note" type="text" class="form-control input-vxr" placeholder="Các yêu cầu đặc biệt không thể được đảm bảo - nhưng nhà xe sẽ cố gắng hết sức để đáp ứng nhu cầu của bạn." />
                                                    </div>
                                                </div>

                                                <div class="clearfix"></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="detail-review" style="min-height: 105px;">
                                    <div class="col-md-4 col-lg-4 col-xs-12 col-sm-4  detail-total">
                                        <div class="col-md-12 col-xs-12" style="min-height: 25px;padding: 0;">
                                            <span style="float:left">
                                                Số ghế:
                                            </span>
                                            <form:hidden path="listSeat" class="seat-template-seat-code-hidden" />
                                            <b style="float:right"><span class="seat-template-seat-code"></span></b>
                                        </div>

                                        <div class="col-md-12 col-xs-12" style="padding:0px;">
                                            <span style="float:left">Tổng tiền:</span>
                                            <div style="float:right">
                                                <span class="seat-template-old-total-fare" style="font-size: 14px; text-decoration: line-through; margin-right: 10px;"></span>
                                                <h4 class="seat-template-total-fare amount" style="font-size:20px;color:red;">0</h4><small style="vertical-align: top; text-decoration: underline;color:red !important;" class="unit-price-small">đ</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-lg-4 detail-review-route">
                                        <div class="col-md-12 col-xs-12" style="min-height: 25px;padding: 0;">
                                            <span style="float:left">Điểm đi:</span>
                                            <b class="rv-tran-from">Hồ Chí Minh</b>
                                        </div>
                                        <div class="col-md-12 col-xs-12" style="min-height: 25px;padding: 0;">
                                            <span style="float:left">Điểm đến:</span>
                                            <b class="rv-tran-to">Hà Nội</b>
                                        </div>
                                    </div>
                                    <div class="column-butom col-md-4 col-lg-4 col-xs-12">
                                        <div class="form-group mb0">
                                            <div class="col-md-12 col-sm-12 cont-container text-center hidden-xs">
                                                <button id="sub-booking" type="submit" class="cont-btn btn btn-vxr-lg btn-vxr-lg-action">
                                                Tiếp tục <i class="glyphicon glyphicon-chevron-right f14"></i>
                                                
                                            </button>
                                                <script>
                                                    $(document).ready(function() {

                                                        $(window).keydown(function(event) {
                                                            if (event.keyCode == 13) {
                                                                event.preventDefault();
                                                                return false;
                                                            }
                                                        });



                                                    });
                                                </script>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </form:form>

                    </div>
                </div>
            </body>

            </html>