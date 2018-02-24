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
<<<<<<< HEAD
				<form class="ui form" action='gasolinepurchase.action' method='post'>
=======
				<form class="ui form" action='gasolinepurchase.action' method="post">
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
					<div class="two fields">
						<div class="required field">
							<label>First Name</label>
							<div class="ui left icon input">
								<i class="user icon"></i>
<<<<<<< HEAD
								<input type="text" name="firstName" required>
=======
								<input type="text" name="first_name" required>
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
							</div>
						</div>
						<div class="required field">
							<label>Last Name</label>
<<<<<<< HEAD
							<input type="text" name="lastName" required>
=======
							<input type="text" name="last_name" required>
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
						</div>	
					</div>
					<div class="two fields">
						<div class="eleven wide required field">
							<label>Fuel Type</label>
<<<<<<< HEAD
							<select class="ui fluid dropdown" name="gasType" required>
=======
							<select class="ui fluid dropdown" name="fuel_type" required>
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
								<option value="">Select Fuel Type</option>
								<option value="Unleaded">Unleaded</option>
								<option value="Diesel">Diesel</option>
								<option value="Premium">Premium</option>
							</select>
						</div>
						<div class="five wide required field" id="liters_field">
							<label>Liters</label>
<<<<<<< HEAD
							<input type="number" name="liters" min="1" required>
=======
							<input type="number" name="fuel_liters" required>
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
						</div>
					</div>
					<div class="required field">
						<label>Credit Card</label>
<<<<<<< HEAD
						<select class="ui fluid dropdown" name="creditCardType" required>
=======
						<select class="ui fluid dropdown" name="credit_card_type" required>
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
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
<<<<<<< HEAD
							<input type="text" name="creditCardNumber" required>
=======
							<input type="text" name="credit_card_number" required>
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
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
<<<<<<< HEAD
			
=======
						
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
		</div>
	</div>
	
	<!-- RESULT MODAL -->
<<<<<<< HEAD
=======
	<div>
	
	</div>
	
>>>>>>> c254e08c1e252b35d3cd97eb645f907396066224
	
	</body>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script src="resource/js/jquery.form.min.js"></script>
	<script src="resource/js/order_form.js"></script>
	<script src="resource/semantic-ui/semantic.min.js"></script>
</html>
