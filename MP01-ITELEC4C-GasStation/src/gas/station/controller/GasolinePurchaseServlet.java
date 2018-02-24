package gas.station.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gas.station.model.*;
import gas.station.utility.InvalidCreditCardNumberException;
import gas.station.utility.Luhn;
import gas.station.utility.Security;
public class GasolinePurchaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init() throws ServletException {
		System.out.println("in init method");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String creditCardType = request.getParameter("creditCardType");
		String creditCardNumber = request.getParameter("creditCardNumber");
		String gasType = request.getParameter("gasType");
		double liters = Double.parseDouble(request.getParameter("liters"));
		
		double pricePerLiterAmount = 0.00;
		double purchaseAmount = 0.00;
		double vat = 0.00;
		double totalAmount = 0.00;
		
		if (gasType.equals("Unleaded")){
			pricePerLiterAmount  = 54.0;
			pricePerLiterAmount = Double.parseDouble(String.format("%.3f", pricePerLiterAmount));
		} else if (gasType.equals("Diesel")){
			pricePerLiterAmount = 41.0;
			pricePerLiterAmount = Double.parseDouble(String.format("%.3f", pricePerLiterAmount));
		} else if (gasType.equals("Premium")){
			pricePerLiterAmount = 58.0;
			pricePerLiterAmount = Double.parseDouble(String.format("%.3f", pricePerLiterAmount));
		}
		
		purchaseAmount = liters * pricePerLiterAmount;
		purchaseAmount = Double.parseDouble(String.format("%.3f", purchaseAmount));
		vat = purchaseAmount * 0.12;
		vat = Double.parseDouble(String.format("%.3f", vat));
		totalAmount = purchaseAmount + vat;
		totalAmount = Double.parseDouble(String.format("%.3f", totalAmount));
		
		try {
			boolean passedLuhnTest = Luhn.luhnTest(creditCardNumber);	
			
			if(passedLuhnTest){
				PurchaseBean purchaseBean = new PurchaseBean(getServletContext(),
						Security.encrypt(firstName), 
						Security.encrypt(lastName),
						Security.encrypt(creditCardType), 
						Security.encrypt(creditCardNumber),
						gasType, liters, pricePerLiterAmount, purchaseAmount,
						vat, totalAmount );
				
				System.out.println("pricerPerLiterAmount: " + pricePerLiterAmount);
				System.out.println("purchaseAmount: " + purchaseAmount);
				System.out.println("vat: " + vat);
				System.out.println("total amount: " + totalAmount);
				
				purchaseBean.insertRecord();
				//binding the user object to request attribute
				getServletContext().setAttribute("purchase", purchaseBean);
				
				getServletContext().log("ready for dispatching " +
					"to display.jsp");
				
				getServletContext().getRequestDispatcher("/checkout.jsp")
					.forward(request, response);					
			}
		} catch (InvalidCreditCardNumberException e) {
			
			System.out.println("Caught the exception");
            System.out.println(e.getMessage());
		}
		
	}
}
