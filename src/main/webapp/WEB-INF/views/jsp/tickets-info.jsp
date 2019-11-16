<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>TicketsO - Booking - Tickets Management</title>

            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        </head>

        <body>
            <nav class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="http://localhost:9999/TicketsO/" style="font-weight: 700;font-size: 40px;color: rgba(0,0,0,.9);">
                    Tickets<span style="color: #FF2D55;">O</span><b style="color: #00acee;">.</b>
                </a>
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </nav>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-3">
                                <form>
                                    <div class="form-group">
                                        <label for="textForTicketCode">Ticket Code</label>
                                        <input type="text" class="form-control" id="ticketCode" placeholder="Enter Ticket Code">
                                        <small id="ticketCOde" class="form-text text-muted">Your ticket code has been sent for you in email.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="textForNumberPhone">Password</label>
                                        <input type="text" class="form-control" id="numberPhone" placeholder="Enter Number Phone">
                                    </div>
                                    <button type="button" class="btn btn-primary" style="width: 100%;">Ticket verification</button>
                                </form>
                                <br>
                                <div class="alert alert-success" role="alert">
                                    <h4 class="alert-heading">Note!</h4>
                                    <p>In case you can not cancel ticket through website or want to change ticket, please contact us via 1900 7070.</p>
                                    <hr>
                                    <p class="mb-0">Have a good day.........</p>
                                </div>
                            </div>
                            <div class="col-9">
                                <div class="">
                                    <div class="alert alert-primary" style="text-align: center;" role="alert">
                                        Please fill the information and try to check ticket again
                                    </div>
                                    <div class="hidden-xs">
                                        <img src="https://vexere.com/assets/vxr-launch-image.png">
                                    </div>
                                </div>

                                <div class="">
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">First</th>
                                                <th scope="col">Last</th>
                                                <th scope="col">Handle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td>Larry</td>
                                                <td>the Bird</td>
                                                <td>@twitter</td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        </body>

        </html>