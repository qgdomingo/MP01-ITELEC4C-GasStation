/**
 * 
 */

	$(document).ready( function() {
		formValidation();		
	});
	
/*
 * DOM EVENTS
 */
		
	$('#select_card').click( function() {
		$('#credit_card_dia').modal({
			closeable: false,
			blurring: true,
			onApprove: function() {
				$('input[name=credit_card_type]').val( $('input:radio[name=card_type_dia]:checked').val() );
			}
		}).modal('show');
	});
	
	$('#select_fuel').click( function(){
		$('#fuel_type_dia').modal({
			closeable: false,
			blurring: true,
			onApprove: function() {
				$('input[name=fuel_type]').val( $('input:radio[name=fuel_type_dia]:checked').val() );
			}
		}).modal('show');
	});
		
/*
 * FUNCTION SUBMIT FORM
 */	
	function formValidation() {
		$('.ui.form')
		  .form({
		    fields: {
		      first_name: {
		        identifier: 'first_name',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please enter your first name'
		          }
		        ]
		      },
		      last_name: {
		        identifier: 'last_name',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please enter your last name'
		          }
		        ]
		      },
		      fuel_type: {
		        identifier: 'fuel_type',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please select a fuel type'
		          }
		        ]
		      },
		      fuel_liters: {
		        identifier: 'fuel_liters',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please enter a value in fuel liters'
		          },
		          {
			        type   : 'regExp[/^[+]?([1-9][0-9]*(?:[\.][0-9]*)?|0*\.0*[1-9][0-9]*)(?:[eE][+-][0-9]+)?$/]',
			        prompt : 'Please enter a valid fuel liters value. It must be a positive number greater than zero'
			      }
		        ]
		      },
		      credit_card_type: {
		        identifier: 'credit_card_type',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please select a credit card type'
		          }
		        ]
		      },
		      credit_card_number: {
		        identifier: 'credit_card_number',
		        rules: [
		          {
		            type   : 'empty',
		            prompt : 'Please enter your credit card number'
		          },
		          {
			        type   : 'exactLength[16]',
			        prompt : 'Your card number must be 16 digits long'
			      }
		        ]
		      }
		    }
		  })
		;
	}
	