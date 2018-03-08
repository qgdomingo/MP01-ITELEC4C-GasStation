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
				<a class="active item" href="index.jsp">
					<i class="cart icon"></i>
					Order
				</a>
				<% 
					if (session.getAttribute("userObj") != null) {
				%>	
				<form method="post" action="viewlogs.action" id="viewlogs_form" >
					<a class="item" id="viewlogs_btn">
						<i class="history icon"></i>
						Transaction History
					</a>
				</form>
				<%} %>
			 	<div class="right menu">
			 		<% 
					if (session.getAttribute("userObj") == null) {
					%>	
					<a class="item" href="loginform.jsp">
						<i class="sign in alternate icon"></i>
						Login
					</a>
					<%} else { %>
					<form method="post" action="logout.action" id="logout_form">
						<a class="item" id="logout_btn">
							<i class="sign out alternate icon"></i>
							Logout
						</a>
					</form>
					<%} %>
				</div>
			</div>
			
			<!-- GAS ORDER FORM -->
			<div class="ui inverted segment">		
				<h2 class="ui header">
					Order Form
				</h2>
			
				<form class="ui form" action='gasolinepurchase.action' method="post">
					<div class="two fields">
						<div class=" field">
							<label>First Name</label>
							<div class="ui left icon input">
								<i class="user icon"></i>
								<input type="text" name="first_name" >
							</div>
						</div>
						<div class=" field">
							<label>Last Name</label>
							<input type="text" name="last_name" >
						</div>	
					</div>
					
					<div class="two fields">
						<div class="eleven wide  field">
							<label>Fuel Type</label>
							<div class="ui action left icon input">
							  <i class="car icon"></i>
							  <input name="fuel_type" type="text" readonly="" >
							  <div class="ui yellow button" id="select_fuel">Select Fuel</div>
							</div>
						</div>
						
						<div class="five wide  field" id="liters_field">
							<label>Liters</label>
							<input type="number" name="fuel_liters" min="1" step="0.1" >
						</div>
					</div>
					
				<!-- PAYMENT -->
					<h4 class="ui horizontal divider header">
					  <i class="credit card outline icon"></i>
					  Payment
					</h4>
					
					<div class="two fields">
						<div class=" nine wide field">
							<label>Credit Card</label>
							<div class="ui action left icon input">
							  <i class="credit card icon"></i>
							  <input name="credit_card_type" type="text" readonly="" >
							  <div class="ui yellow button" id="select_card">Select Card</div>
							</div>
							
						</div>
						<div class=" seven wide field">
							<label>Credit Card Number</label>
							<div class="ui left icon input">
								<i class="hashtag icon"></i>
								<input type="text" name="credit_card_number" >
							</div>
						</div>
					</div>
					<div class="ui error message"></div>
					
					<br>
					
					<button type="submit" class="ui fluid big green animated button" tabindex="0" id="form_submit">
						<div class="visible content">Submit Order</div>
						<div class="hidden content">
							<i class="large shopping cart icon"></i>
						</div>
					</button>

				</form>
			</div>
		</div>
	</div>
	
	<!-- CREDIT CARD TYPE PICKER MODAL -->
	<div class="ui small modal" id="credit_card_dia">
		<div class="content">
		
			<!-- FIRST ROW OF CREDIT CARDS -->
			<div class="ui stackable four cards">
			
				<div class="card">
					<div class="image">
						<img class="ui tiny image" src="resource/img/Visa.png"/>
					</div>
					<div class="content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="visa_card" value="Visa" name="card_type_dia" tabindex="0"/>
								<label for="visa_card">VISA</label>
							</div>
						</div>
					</div>
				</div>
				
				<div class="card">
					<div class="image">
						<img class="ui tiny image" src="resource/img/Mastercard.png"/>
					</div>
					<div class="content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="mastercard" value="Mastercard" name="card_type_dia" tabindex="0"/>
								<label for="mastercard">Mastercard</label>
							</div>
						</div>
					</div>
				</div>
				
				<div class="card">
					<div class="image">
						<img class="ui tiny image" src="resource/img/JCB.png"/>
					</div>
					<div class="content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="jcb" value="JCB" name="card_type_dia" tabindex="0"/>
								<label for="jcb">JCB</label>
							</div>
						</div>
					</div>
				</div>
				
				<div class="card">
					<div class="image">
						<img class="ui tiny image" src="resource/img/Amex.png"/>
					</div>
					<div class="content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="amex" value="AMEX" name="card_type_dia" tabindex="0"/>
								<label for="amex">AMEX</label>
							</div>
						</div>
					</div>
				</div>
			
			</div>
			
			<!-- SECOND ROW OF CREDIT CARDS -->
			<div class="ui stackable four cards">
			
				<div class="card">
					<div class="image">
						<img class="ui tiny image" src="resource/img/PayMaya.png"/>
					</div>
					<div class="content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="paymaya" value="PayMaya" name="card_type_dia" tabindex="0"/>
								<label for="paymaya">PAY MAYA</label>
							</div>
						</div>
					</div>
				</div> 
				
				<div class="card">
					<div class="image">
						<img class="ui tiny image" src="resource/img/GCash.png"/>
					</div>
					<div class="content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="gcash" value="GCASH" name="card_type_dia" tabindex="0"/>
								<label for="gcash">GCASH</label>
							</div>
						</div>
					</div>
				</div> 
				
				<div class="card">
					<div class="image">
						<img class="ui tiny image" src="resource/img/Diners.png"/>
					</div>
					<div class="content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="diners" value="DINERS" name="card_type_dia" tabindex="0"/>
								<label for="diners">DINERS</label>
							</div>
						</div>
					</div>
				</div> 
					
			</div>
		</div>
		<div class="actions">
			<button class="ui cancel button">Close</button>
			<button class="ui positive green button">Select Credit Card</button>
		</div>
	</div>
	
	<!-- FUEL TYPE PICKER MODAL -->
	<div class="ui small modal" id="fuel_type_dia">
		<div class="content">
			<div class="ui stackable three cards">
				
				<div class="card">
					<div class="content">
						<div class="header">Unleaded</div>
     					<div class="meta">&#8369;54.00 per liter</div>
					</div>
					<div class="extra content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="unleaded" value="Unleaded" name="fuel_type_dia" tabindex="0"/>
								<label for="unleaded">Select Unleaded</label>
							</div>
						</div>
					</div>
				</div> 
			
				<div class="card">
					<div class="content">
						<div class="header">Diesel</div>
     					<div class="meta">&#8369;41.00 per liter</div>
					</div>
					<div class="extra content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="diesel" value="Diesel" name="fuel_type_dia" tabindex="0"/>
								<label for="diesel">Select Diesel</label>
							</div>
						</div>
					</div>
				</div> 
				
				<div class="card">
					<div class="content">
						<div class="header">Premium</div>
     					<div class="meta">&#8369;58.00 per liter</div>
					</div>
					<div class="extra content">
						<div class="field">
							<div class="ui radio checkbox">
								<input type="radio" id="premium" value="Premium" name="fuel_type_dia" tabindex="0"/>
								<label for="premium">Select Premium</label>
							</div>
						</div>
					</div> 
				</div> 
			</div>	
		</div>
		<div class="actions">
			<button class="ui cancel button">Close</button>
			<button class="ui positive green button">Select Fuel Type</button>
		</div>
	</div>
	</body>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script src="resource/semantic-ui/semantic.min.js"></script>
	<script src="resource/js/order_form.js"></script>
	<script src="resource/js/logout_form.js"></script>
	<script src="resource/js/viewlogs_form.js"></script>
</html>
