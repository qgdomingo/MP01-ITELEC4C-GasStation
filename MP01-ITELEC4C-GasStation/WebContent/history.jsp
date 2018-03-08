<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.sql.*, gas.station.utility.Security"%>
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
	if (session.getAttribute("userObj") == null) {
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
				<form method="post" action="viewlogs.action" id="viewlogs_form">
					<a class="item" id="viewlogs_btn">
						<i class="history icon"></i>
						Transaction History
					</a>
				</form>
			 	<div class="right menu"> 
					<form method="post" action="logout.action" id="logout_form">
						<a class="item" id="logout_btn">
							<i class="sign out alternate icon"></i>
							Logout
						</a>
					</form>
				</div>
			</div>
			
			<!-- TRANSACTION HISTORY -->
			<% ResultSet log = (ResultSet) request.getAttribute("logRecord"); %>
			
			<div class="ui inverted segment">
				<h3 class="ui header" style="margin-top: 5px;">
					<i class="history icon"></i>
					Transaction History
				</h3>
				
				<table class="ui table">
					<thead class="ui header"> 
						<tr>
							<td>id</td>
							<td>Credit Card Number</td>
							<td>Fuel Type</td>
							<td>Fuel Liters</td>
							<td>Total Net Pay</td>
							<td>Timestamp</td>
						</tr>
					</thead>
					<tbody>
					<% while (log.next()) { %>
						<tr>
							<td><%=log.getInt("id") %></td>
							<td><%=Security.decrypt(log.getString("cc_number")) %></td>
							<td><%=Security.decrypt(log.getString("fuel_type")) %></td>
							<td><%=Security.decrypt(log.getString("fuel_liters")) %></td>
							<td><%=Security.decrypt(log.getString("total_net_pay")) %></td>
							<td><%=Security.decrypt(log.getString("timestamp")) %></td>
						</tr>
					<% } %>
					</tbody>
				</table>
					
			</div>
		</div>
	</div>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script src="resource/js/logout_form.js"></script>
</body>
</html>