$(document).ready(function() {

	$("#btn-check-login").click(function() {
		var username = $("#username").val();
		var password = $("#password").val();
		
		$.ajax({
			url : "/TicketsO/api/checkLogin",
			type : "GET",
			data : {
				username : username,
				password : password,
			},
			success : function(value) {
				
				if(value == "true"){
					currentPath = window.location.href;
					redirectPath = currentPath.replace("user/login", "");
					window.location = redirectPath;
				}else{
					$("#result-login").text("Username or Password does not math.");
				}
				
			}
		})

	});

})

