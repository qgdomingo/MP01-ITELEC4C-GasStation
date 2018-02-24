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
	
/*
 * DOM EVENTS
 */
	
	$('button[type="submit"]').click(() => {
		addCSSClass('form', 'loading');
	});
	
	$('input[type="number"]').on('input', () => {
		gas_liters = parseInt( $('input[type="number"]').val() );
		
		if( isNaN( gas_liters ) ) {
			addCSSClass('#liters_field', 'error');
		} 
		else {
			removeCSSClass('#liters_field', 'error');
		}
	});
		
/*
 * FUNCTION SUBMIT FORM
 */	
	function submitGasOrder() {
		$('form').ajaxForm({
			resetForm: true,
		    success: function(response) {    

		    },
		    error: function(response) {
	
		    }
		});
	}
	
