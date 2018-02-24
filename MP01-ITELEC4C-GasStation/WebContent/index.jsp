<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<link rel="stylesheet" href="resource/semantic-ui/semantic.min.css">
		<link rel="stylesheet" href="resource/css/order_form.css">
		<title>Insert title here</title>
	</head>
<body>
	<div class="ui centered grid container">
		<div class="eight wide computer eight wide tablet sixteen wide mobile column form-area ">
		
<<<<<<< HEAD
			<!-- GAS ORDER FORM -->
			<form class="ui form" action='gasolinepurchase.action' method="post">
				<div class="field">
					<label>First Name</label>
					<input type="text" name="firstName" required>
				</div>
				<div class="field">
					<label>Last Name</label>
					<input type="text" name="lastName" required>
				</div>
				<div class="field">
					<label>Gas Type</label>
					<select class="ui fluid dropdown" name="gasType" required>
						<option value="">Select Gas</option>
						<option value="Unleaded">Unleaded</option>
						<option value="Diesel">Diesel</option>
						<option value="Premium">Premium</option>
					</select>
				</div>
				<div class="field">
					<label>Liters</label>
					<input type="number" name="liters" required>
				</div>
				<div class="field">
					<label>Credit Card</label>
					<select class="ui fluid dropdown" name="creditCardType" required>
						<option value="">Select Credit Card</option>
						<option value="Visa">VISA</option>
						<option value="Mastercard">MASTERCARD</option>
						<option value="JCB">JCB</option>
						<option value="Amex">AMEX</option>
						<option value="Pay Maya">PAY MAYA</option>		
						<option value="Gcash">GCASH</option>	
						<option value="Diners">DINERS</option>	
					</select>
				</div>
				<div class="field">
					<label>Credit Card Number</label>
					<input type="text" name="creditCardNumber" required>
				</div>
				
				<button type="submit" class="ui fluid green button">
					Submit Order
				</button>
			</form>
=======
			<!-- GAS HEADER -->
			<h2 class="ui center aligned icon header">
				<div class="ui image">
					<img class="ui image" src="resource/img/ust_logo.png">
				</div>
				<div class="content">
					Gas Station eCommerce
				</div>
			</h2>
			
			<!-- GAS ORDER FORM -->
			<div class="ui segment">
				<form class="ui form">
					<div class="two fields">
						<div class="field">
							<label>First Name</label>
							<div class="ui left icon input">
								<i class="user icon"></i>
								<input type="text" required>
							</div>
						</div>
						<div class="field">
							<label>Last Name</label>
							<input type="text" required>
						</div>	
					</div>
					<div class="two fields">
						<div class="twelve wide field">
							<label>Gas Type</label>
							<select class="ui fluid dropdown" required>
								<option value="">Select Gas</option>
								<option value="Unledead">Unleadead</option>
								<option value="Diesel">Diesel</option>
								<option value="Premium">Premium</option>
							</select>
						</div>
						<div class="four wide field">
							<label>Liters</label>
							<input type="number" required>
						</div>
					</div>
					<div class="field">
						<label>Credit Card</label>
						<select class="ui fluid dropdown" required>
							<option value="">Select Credit Card</option>
							<option value="Visa">VISA</option>				
						</select>
					</div>
					<div class="field">
						<label>Credit Card Number</label>
						<div class="ui left icon input">
							<i class="credit card icon"></i>
							<input type="text" required>
						</div>
					</div>
					
					<button type="submit" class="ui fluid big green animated button" tabindex="0">
						<div class="visible content">Submit Order</div>
						<div class="hidden content">
							<i class="large cart arrow down icon"></i>
						</div>
					</button>

				</form>
			</div>
>>>>>>> c719c9f0194e6984929e256d23b2daeb7e8625b0
			
		</div>
	</div>

	</body>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script src="resource/js/order_form.js"></script>
	<script src="resource/semantic-ui/semantic.min.js"></script>
</html>