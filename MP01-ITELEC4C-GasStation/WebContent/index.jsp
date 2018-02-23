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
			<form class="ui form">
				<div class="field">
					<label>First Name</label>
					<input type="text" required>
				</div>
				<div class="field">
					<label>Last Name</label>
					<input type="text" required>
				</div>
				<div class="field">
					<label>Gas Type</label>
					<select class="ui fluid dropdown" required>
						<option value="">Select Gas</option>
						<option value="Unledead">Unleadead</option>
						<option value="Diesel">Diesel</option>
						<option value="Premium">Premium</option>
					</select>
				</div>
				<div class="field">
					<label>Liters</label>
					<input type="number" required>
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
					<input type="text" required>
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
