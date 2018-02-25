<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
			
			<!-- GAS CHECKOUT RESULTS -->
				
			<h3 class="ui dividing header">
				You Ordered
			</h3>
			
			<table class="ui compact definition table">
				<tbody>
					<tr>
						<td><b>Customer Name:</b></td>
						<td>INSERT CUSTOMER NAME</td>
					</tr>
					<tr>
						<td><b>Fuel Type:</b></td>
						<td>INSERT FUEL TYPE</td>
					</tr>
					<tr>
						<td><b>Price per Liter:</b></td>
						<td>&#8369;INSERT PRICE</td>
					</tr>
					<tr>
						<td><b>Liters Ordered:</b></td>
						<td>INSERT LITERS</td>
					</tr>
					<tr>
						<td><b>Price Amount:</b></td>
						<td>&#8369;INSERT PRICE AMOUNT</td>
					</tr>
					<tr>
						<td><b>VAT:</b></td>
						<td>&#8369;INSERT VAT</td>
					</tr>
					<tr>
						<td><b>TOTAL AMOUNT:</b></td>
						<td>&#8369;INSERT PRICE</td>
					</tr>
				</tbody>
			</table>
				
			<p><i>Credit card **** **** **** [INSERT LAST 4 DIGITS] has successfully charged.</i></p>
			
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