<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<link rel="stylesheet" href="resource/semantic-ui/semantic.min.css">
		<link rel="stylesheet" href="resource/css/order_form.css">
		<title>Stop n' Gas</title>
		
		<!-- BROWSER ICONS -->
		<link rel="apple-touch-icon" sizes="180x180" href="resource/icon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="resource/icon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="resource/icon/favicon-16x16.png">
		<link rel="manifest" href="resource/icon/site.webmanifest">
		<link rel="mask-icon" href="resource/icon/safari-pinned-tab.svg" color="#5bbad5">
		<meta name="msapplication-TileColor" content="#ffffff">
		<meta name="theme-color" content="#ffffff">	
	</head>
<body>

	<%
	if (session.getAttribute("userObj") != null) {
		response.sendRedirect("index.jsp");		
	}
	%>	
	<div class="ui centered grid container">
		<div class="ten wide computer fourteen wide tablet sixteen wide mobile column form-area ">
			<!-- GAS HEADER -->
			<h1 class="ui center aligned icon header">
				<div class="ui image">
					<img class="ui image" src="resource/img/stopandgas.png">
				</div>
				<div class="content">
					Stop n' Gas
				</div>
			</h1>
			
			<!-- MENU -->
			<div class="ui pointing inverted menu">
				<a class="item" href="index.jsp">
					<i class="cart icon"></i>
					Order
				</a>
			 	<div class="right menu">
					<a class="active item" href="loginform.jsp">
						<i class="sign in alternate icon"></i>
						Login
					</a>
				</div>
			</div>
			
			<!-- LOGIN FORM -->
			<div class="ui inverted segment">
				<h3 class="ui header" style="margin-top: 5px;">
					<i class="sign in alternate icon"></i>
					Login
				</h3>
			 	
				<form class="ui form" action='validateuser.action' method="post">
					<div class="two fields">
					<div class="field">
						<label>Username</label>
						<div class="ui left icon input">
  							<i class="user icon"></i>
 							<input type="text" name="username" placeholder="Username">
						</div>
					</div>
					<div class="field">
						<label>Password</label>
						<div class="ui left icon input">
  							<i class="lock icon"></i>
 							<input type="password" name="password" placeholder="Password">
						</div>
					</div>
					</div> 
					<div class="ui error message"></div>
					
					<button type="submit" class="ui fluid green button" tabindex="0">
						Login
					</button> 
				</form>
				
				<br>
			</div>
		</div>
	</div>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script src="resource/semantic-ui/semantic.min.js"></script>
	<script src="resource/js/login_form.js"></script>
</body>
</html>