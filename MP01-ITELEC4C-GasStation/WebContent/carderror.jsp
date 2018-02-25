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
		<div class="eight wide computer eleven wide tablet sixteen wide mobile column form-area ">
		
			<!-- GAS HEADER -->
			<h1 class="ui center aligned icon header">
				<div class="ui image">
					<img class="ui image" src="resource/img/stopandgas.png">
				</div>
				<div class="content">
					Stop n' Gas
				</div>
			</h1>
			
			<!-- ERROR AREA -->
			<div class="ui inverted segment">	 
				<h2 class="ui header">
					Credit Card Number Error
				</h2>
				
				<h4>
					You have entered an invalid credit card number. Please try again. 
				</h4>
				
				<br> 
				
				<button type="button" id="" class="ui fluid animated button" tabindex="0">
					<div class="visible content">Go Back</div>
					<div class="hidden content">
						<i class="arrow left icon"></i>
					</div>
				</button>
			</div>
		</div>
	</div>
	
	</body>
	<script src="resource/js/jquery-3.2.1.min.js"></script>
	<script>
		$('button').click( function(){
		   window.location.href = 'index.jsp';
		})
	</script>
</html>
