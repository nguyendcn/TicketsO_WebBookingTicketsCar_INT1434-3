$(document).ready(function() {

    $("#btn-check-login").click(function() {
        var username = $("#username").val();
        var password = $("#password").val();

        $.ajax({
            url: "/TicketsO/api/checkLogin",
            type: "GET",
            data: {
                username: username,
                password: password,
            },
            success: function(value) {

                if (value == "true") {
                    currentPath = window.location.href;
                    window.location.href = "http://localhost:9999/TicketsO/dashboard/";
                } else {
                    $("#result-login").text("Username or Password does not math.");
                }

            }
        })

    });

})