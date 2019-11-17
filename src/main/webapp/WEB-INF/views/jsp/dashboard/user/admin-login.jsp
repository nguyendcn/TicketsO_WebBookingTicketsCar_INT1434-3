<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html class="ticketsO-Administration-Login">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Website Administration</title>
<link rel="shortcut icon" type="image/x-icon"
	href="/nguyenne/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/core/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dashboard/user/login/animate.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Roboto:400,300,500,700">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dashboard/user/login/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/dashboard/user/login/custom.css">
</head>

<body class="white-bg" data-gr-c-s-loaded="true">

	<div class="header">
		<div class="container">
			<a href="https://www.vevs.com/" target="_blank" class="header-logo"
				rel="nofollow">VEVS</a>
		</div>
	</div>

	<div class="main">
		<div class="container">
			<div class="middle-box text-center loginscreen animated fadeInDown">
				<h3>Admin Login</h3>


				<form:form action="checkLogin" method="post" id="frmLoginAdmin"
					class="m-t" role="form" novalidate="novalidate"
					modelAttribute="userInfo">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-at"></i></span>
							<form:input path="username" name="login_email" id="login_email" class="form-control required email"/>
						</div>
						<span id="login_email-error" class="help-block"
							style="display: none;"></span>
					</div>
					<div class="form-group has-error">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<form:input path="password" type="password" name="login_password"
								id="login_password" class="form-control required"
								placeholder="Password" required="" autocomplete="off"
								aria-required="true" aria-describedby="login_password-error"
								aria-invalid="true" />
						</div>
						<span id="login_password-error" class="help-block">This
							field is required.</span>
					</div>
					<button type="submit" class="btn btn-primary block full-width m-b">Login</button>
					<a
						href="http://trials.vevs.website/nguyenne/index.php?controller=pjCmsAuth&amp;action=pjActionForgot"><small>Forgot
							password</small></a>
				</form:form>
			</div>
		</div>
	</div>

	<div class="page-footer">
		Copyright <strong><a href="https://dcnguyen.ooo/"
			target="_blank" rel="nofollow">Đặng Cao Nguyên</a></strong> © 2019
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/core/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/core/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/admin-login/pjCmsAuth.js"></script>

</body>

</html>