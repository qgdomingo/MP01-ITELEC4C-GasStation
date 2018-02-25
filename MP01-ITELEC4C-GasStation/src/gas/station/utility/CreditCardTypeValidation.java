package gas.station.utility;

public class CreditCardTypeValidation {
	
	public static void main(String[] args) {   	
		
	}
		 
	public static boolean validateCardType(String number, String type) throws InvalidCreditCardNumberException{
		
		switch(type){

			case "Visa":
				String visaPattern = "^4[0-9]{6,}$";
				if(!number.matches(visaPattern)){
					throw new InvalidCreditCardNumberException("Invalid Credit Card Number for Visa Card Type.");
				}				
				break;
			case "Mastercard":
				String masterCardPattern = "^5[1-5][0-9]{5,}|222[1-9][0-9]{3,}|22[3-9][0-9]{4,}|2[3-6][0-9]{5,}|27[01][0-9]{4,}|2720[0-9]{3,}";
				if(!number.matches(masterCardPattern)){
					throw new InvalidCreditCardNumberException("Invalid Credit Card Number for Mastercard Card Type.");
				}
				break;
			case "JCB":
				String jcbPattern = "^(?:2131|1800|35[0-9]{3})[0-9]{3,}$";
				if(!number.matches(jcbPattern)){
					throw new InvalidCreditCardNumberException("Invalid Credit Card Number for JCB Card Type.");
				}
				break;
			case "AMEX":
				String amexPattern = "^3[47][0-9]{13}$";
				if(!number.matches(amexPattern)){
					throw new InvalidCreditCardNumberException("Invalid Credit Card Number for Amex Card Type.");
				}
				break;
			case "PayMaya":
				//same with Visa
				String payMayaPattern = "^4[0-9]{6,}$";
				if(!number.matches(payMayaPattern)){
					throw new InvalidCreditCardNumberException("Invalid Credit Card Number for Pay Maya Card Type.");
				}
				break;
			case "GCASH":
				//same with mastercard
				String gcashPattern = "^5[1-5][0-9]{5,}|222[1-9][0-9]{3,}|22[3-9][0-9]{4,}|2[3-6][0-9]{5,}|27[01][0-9]{4,}|2720[0-9]{3,}";
				if(!number.matches(gcashPattern)){
					throw new InvalidCreditCardNumberException("Invalid Credit Card Number for GCash Card Type.");
				}
				break;
			case "DINERS":
				String dinersPattern = "^3(?:0[0-5]|[68][0-9])[0-9]{4,}$";
				if(!number.matches(dinersPattern)){
					throw new InvalidCreditCardNumberException("Invalid Credit Card Number for Diners Card Type.");
				}
				break;
		}
		return true;
	}
}
