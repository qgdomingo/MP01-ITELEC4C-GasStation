package gas.station.utility;

public class InvalidCreditCardNumberException extends Exception {
	
	public InvalidCreditCardNumberException(String s)
    {
        // Call constructor of parent Exception
        super(s);
    }
}
