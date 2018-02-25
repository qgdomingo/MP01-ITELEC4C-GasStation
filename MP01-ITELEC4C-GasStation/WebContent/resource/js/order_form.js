/**
 * 
 */

	$(document).ready(() => {
		$('.ui.fluid.dropdown').dropdown();
	});

/*
 * VARIABLES
 */
	var gas_liters;
	
/*
 * FUNCTION HELPERS
 */
		
	function addCSSClass(element, cssClass) {
		if(!$(element).hasClass(cssClass)) $(element).addClass(cssClass); 
	}
		
	function removeCSSClass(element, cssClass) {
		if($(element).hasClass(cssClass)) $(element).removeClass(cssClass); 
	}
	
	function checkIfLitersNumber() {
		gas_liters = parseInt( $('input[type="number"]').val() );
		
		if( isNaN( gas_liters ) && gas_liters >= 1) {
			addCSSClass('#liters_field', 'error');
			return false;
		} 
		else {
			removeCSSClass('#liters_field', 'error');
			return true;
		}
	} 
	
	function checkNotEmptyFields() {
		
	}
	
	function formChecker() {
		if(checkIfLitersNumber() && checkEmptyFields()) {
			return true;
		} 
		else {
			return false;
		}
	}
	
/*
 * DOM EVENTS
 */
	
	$('button[type="submit"]').click(() => {
		addCSSClass('form', 'loading');
	});
	
	$('input[type="number"]').on('input', () => {
		checkIfLitersNumber();
	});
		
/*
 * FUNCTION SUBMIT FORM
 */	
	
	
