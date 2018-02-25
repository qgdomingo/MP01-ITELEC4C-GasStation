<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<link rel="stylesheet" href="resource/semantic-ui/semantic.min.css">
		<link rel="stylesheet" href="resource/css/order_form.css">
		<title>Stop n' Gas</title>
	</head>
<body>
	<div class="ui centered grid container">
		<div class="eight wide computer ten wide tablet sixteen wide mobile column form-area ">
		
			<!-- GAS HEADER -->
			<h1 class="ui center aligned icon header">
				<div class="ui image">
					<img class="ui image" src="resource/img/ust_logo.png">
				</div>
				<div class="content">
					Stop n' Gas
				</div>
			</h1>
			
			<!-- GAS ORDER FORM -->
			<div class="ui segment">
				<form class="ui form" action='gasolinepurchase.action' method="post">
					<div class="two fields">
						<div class="required field">
							<label>First Name</label>
							<div class="ui left icon input">
								<i class="user icon"></i>
								<input type="text" name="first_name" required>
							</div>
						</div>
						<div class="required field">
							<label>Last Name</label>
							<input type="text" name="last_name" required>
						</div>	
					</div>
					<div class="two fields">
						<div class="eleven wide required field">
							<label>Fuel Type</label>
							<select class="ui fluid dropdown" name="fuel_type" required>
								<option value="">Select Fuel Type</option>
								<option value="Unleaded">Unleaded</option>
								<option value="Diesel">Diesel</option>
								<option value="Premium">Premium</option>
							</select>
						</div>
						<div class="five wide required field" id="liters_field">
							<label>Liters</label>
							<input type="number" name="fuel_liters" required>
						</div>
					</div>
					<div class="required field">
						<label>Credit Card</label>
						<select class="ui fluid dropdown" name="credit_card_type" required>
							<option value="">Select Credit Card</option>
							<option value="Visa">VISA</option>		
							<option value="Mastercard">Mastercard</option>	
							<option value="JCB">JCB</option>	
							<option value="AMEX">AMEX</option>			
							<option value="PayMaya">Pay Maya</option>
							<option value="GCASH">GCASH</option>
							<option value="DINERS">DINERS</option>
						</select>
					</div>
					<div class="required field">
						<label>Credit Card Number</label>
						<div class="ui left icon input">
							<i class="credit card icon"></i>
							<input type="text" name="credit_card_number" required>
						</div>
					</div>
					
					<button type="submit" class="ui fluid big green animated button" tabindex="0">
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
	<div class="ui modal">
		<div class="content">
			
		</div>
		<div class="action">
			<button class="ui cancel button">Okay</button>
		</div>
	</div>
	
	
	</body>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script src="resource/js/order_form.js"></script>
	<script src="resource/semantic-ui/semantic.min.js"></script>
</html>