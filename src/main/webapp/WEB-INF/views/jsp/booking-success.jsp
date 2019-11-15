<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Booking success</title>

            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

            <script>
                window.onload = function() {
                    document.getElementById('submit-text').click();
                }
            </script>
        </head>

        <body>

            <!-- Button trigger modal -->
            <button type="button" id="submit-text" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Launch demo modal
  </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header p-3 mb-2 bg-success text-white">
                            <h5 class="modal-title" id="exampleModalCenterTitle">Booking Information</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12 rounded-pill">
                                        <h6>Passenger Name: <b>${bookingInfo.passengerName}</b></h6>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <h6>Departure:<b>${bookingInfo.departure}</b></h6>
                                    </div>
                                    <div class="col-md-4">
                                        <h6>Destination:<b>${bookingInfo.destiantion}</b></h6>
                                    </div>
                                    <div class="col-md-4">
                                        <h6>Departure date:<b>${bookingInfo.depDate}</b></h6>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h6>Company Transport: <b>${bookingInfo.companyName}</b></h6>
                                    </div>
                                    <div class="col-md-6">
                                        <h6>Company hotline: <b>${bookingInfo.companyHotline}</b></h6>
                                    </div>
                                </div>
                                <hr>
                                <h5>Tickets Details</h5>
                                <table class="table">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Ticket ID</th>
                                            <th scope="col">Seat</th>
                                            <th scope="col">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${bookingInfo.lTicket}" var="ticket" varStatus="loop">
                                            <tr>
                                                <th scope="row">${loop.index + 1}</th>
                                                <td>${ticket.id}</td>
                                                <td>${ticket.seatCode}</td>
                                                <td><button type="button" class="btn btn-success">${ticket.status?'Confirm':'Decline'}</button></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            <div class="alert alert-primary" role="alert">
                                All information already sent to your email. Please check it out!
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        </body>

        </html>