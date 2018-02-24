<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<link rel="stylesheet" href="resource/semantic-ui/semantic.min.css">
		<title>Insert title here</title>
	</head>
<body>
	<div class="ui centered grid container">
		<div class="eight wide computer eight wide tablet sixteen wide mobile column">
		
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
			
		</div>
	</div>

	</body>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script src="resource/js/order_form.js"></script>
	<script src="resource/semantic-ui/semantic.min.js"></script>
</html>