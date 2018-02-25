<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
		<div class="eight wide computer ten wide tablet sixteen wide mobile column form-area ">
			<!-- GAS HEADER -->
			<h1 class="ui center aligned icon header">
				<div class="ui image">
					<img class="ui image" src="resource/img/stopandgas.png">
				</div>
				<div class="content">
					Stop n' Gas
				</div>
			</h1>
			
			<!-- GAS CHECKOUT RESULTS -->
				
			<h2 class="ui dividing header">
				<i class="shopping cart icon"></i>
				You Purchased...
			</h2>
			
			<table class="ui compact definition inverted table">
				<tbody>
					<tr>
						<td><b>Customer Name:</b></td>
						<td>${purchase.firstName} ${purchase.lastName}</td>
					</tr>
					<tr>
						<td><b>Fuel Type:</b></td>
						<td>${purchase.gasType}</td>
					</tr>
					<tr>
						<td><b>Price per Liter:</b></td>
						<td>&#8369;${purchase.pricePerLiterAmount}</td>
					</tr>
					<tr>
						<td><b>Liters Ordered:</b></td>
						<td>${purchase.liters}</td>
					</tr>
					<tr>
						<td><b>Purchase Amount:</b></td>
						<td>&#8369;${purchase.purchaseAmount}</td>
					</tr>
					<tr>
						<td><b>VAT:</b></td>
						<td>&#8369;${purchase.vat}</td>
					</tr>
					<tr>
						<td><b>TOTAL AMOUNT:</b></td>
						<td>&#8369;${purchase.totalAmount}</td>
					</tr>
				</tbody>
			</table>
				
			<p><i>Credit card **** **** **** ${purchase.creditCardNumber} has successfully charged.</i></p>
			
			<button type="button" class="ui fluid big blue animated button" tabindex="0">
				<div class="visible content">Order Again</div>
				<div class="hidden content">
					<i class="large arrow left icon"></i>
				</div>
			</button>
			
		</div>
	</div>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script>
		$('button').click( function(){
		   window.location.href = 'index.jsp';
		})
	</script>
</body>
</html>