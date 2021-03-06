/**
 * 
 */

	$(document).ready( function() {
		formValidation();		
	});
	
	function addCSSClass(element, cssClass) {
		if(!$(element).hasClass(cssClass)) $(element).addClass(cssClass); 
	}
	
	function removeCSSClass(element, cssClass) {
		if($(element).hasClass(cssClass)) $(element).removeClass(cssClass); 
	}
	
/*
 * FUNCTION SUBMIT FORM
 */	
	$('button[type="submit"]').click( function(e) {
		e.preventDefault();
	});
	
	$('#login_form').ajaxForm({
		beforeSubmit: isLoginFormValid,
		success: function(response) {    
        	$('#correct_dialog').modal({
        		closeable: false,
        		blurring: true
        	}).modal('show');
        	
        	removeCSSClass('#login_segment', 'loading');
        	
        	setTimeout(function() {  
        		$('#correct_dialog').modal('hide');	
        	}, 2000);
        },
        error: function(jqXHR, response, textStatus) {
        	$('#incorrect_dialog').modal({
        		closeable: false,
        		blurring: true
        	}).modal('show');
        	
        	removeCSSClass('#login_segment', 'loading');
        }
				
	});
	
	
	function formValidation() {
		$('#login_form')
		  .form({
		    fields: {
		      username: {
		        identifier: 'username',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please enter your username'
		          }
		        ]
		      },
		      password: {
		        identifier: 'password',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please enter your password'
		          }
		        ]
		      }
		    }
		  });
	}
	
	function isLoginFormValid() {
		if( $('#login_form').form('is valid') ) {
			addCSSClass('#login_segment', 'loading');
			return true;
		} 
		else {
			return false;
		}
	}