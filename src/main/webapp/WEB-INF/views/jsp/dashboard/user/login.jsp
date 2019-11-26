<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
<script src="https://kit.fontawesome.com/adc61e0cce.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!--<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.css"/>"> -->
<script src="<c:url value="/resources/js/script.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/dashboard/user/login/main.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/dashboard/user/login/util.css"/>">
<!--===============================================================================================-->
</head>
	<div class="container">
		<div class="container-login">
			<div class="wrap-login">
				<form:form action="checkLogin" class="login-form p-l-55 p-r-55 p-t-178" method="post" modelAttribute="userInfo">
					<span class="login-form-title"> Sign In </span>
					
					<span id="result-login"></span>
					
					
					<span>${errorLogin}</span>
					<div class="wrap-input validate-input m-b-16"
						data-validate="Please enter username">
				
						<form:input class="input" path="username"
							placeholder="Username" /> 
						<span class="focus-input"></span>
						<form:errors path="username"/>
						
					</div>

					<div class="wrap-input validate-input"  data-validate="Please enter password">
						
						<form:input class="input" path="password"
							placeholder="Password" /> 
							<span class="focus-input"></span>
							<form:errors path="password"/>
							
					</div>
					
					<div class="text-right p-t-13 p-b-23">
						<span class="txt1"> Forgot </span> <a href="#" class="txt2">
							Username / Password? </a>
					</div>

					<div class="container-login-form-btn">
						<button type="submit" class="login-form-btn">Sign In</button>
						
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9"> Don't have an account? </span> <a
							href="#" class="txt3"> Sign up now </a>
					</div>
				</form:form>
			</div>
		</div>
	</div>


</body>
</html>