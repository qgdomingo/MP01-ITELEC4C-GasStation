package gas.station.model;

import java.sql.SQLException;

import javax.servlet.ServletContext;

import gas.station.utility.Security;

import java.sql.*;
public class PurchaseBean {

	String firstName;
	String lastName;
	String creditCardType;
	String creditCardNumber;
	String gasType;
	double liters;
	double pricePerLiterAmount;
	double purchaseAmount;
	double vat;
	double totalAmount;
	
	private ServletContext getServletContext;

	public PurchaseBean() {
	}
	
	public PurchaseBean(ServletContext getServletContext, 
		String firstName, String lastName, String creditCardType, String creditCardNumber,
		String gasType, double liters, double pricePerLiterAmount, double purchaseAmount,
		double vat, double totalAmount) {
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.creditCardType = creditCardType;
		this.creditCardNumber = creditCardNumber;
		this.gasType = gasType;
		this.liters = liters;
		this.pricePerLiterAmount = pricePerLiterAmount;
		this.purchaseAmount = purchaseAmount;
		this.vat = vat;
		this.totalAmount = totalAmount;
		this.getServletContext = getServletContext;
		//create a server log entry that 
		//says "Bean initialization finished"
		getServletContext.log("Bean initialization finished");
	}
	
	
	public void insertRecord(){
		try{
			String sql = "insert into CustomerPurchase (first_name,last_name,credit_card_type,credit_card_number,gas_type,liters,price_per_liter_amount,"
					+ "purchase_amount,vat,total_amount) values (?,?,?,?,?,?,?,?,?,?)";
				
			Connection connection = (Connection) getServletContext.getAttribute("dbconn");
			
			PreparedStatement pstmnt = connection.prepareStatement(sql);
			
			pstmnt.setString(1, Security.encrypt(this.firstName));
			pstmnt.setString(2, Security.encrypt(this.lastName));
			pstmnt.setString(3, Security.encrypt(this.creditCardType));
			pstmnt.setString(4, Security.encrypt(this.creditCardNumber));
			pstmnt.setString(5, this.gasType);
			pstmnt.setDouble(6, this.liters);
			pstmnt.setDouble(7, this.pricePerLiterAmount);
			pstmnt.setDouble(8, this.purchaseAmount);
			pstmnt.setDouble(9, this.vat);
			pstmnt.setDouble(10, this.totalAmount);
			

			pstmnt.executeUpdate();
		}catch(SQLException sqle){
			System.err.println(sqle.getMessage());
		}
	}
	
	public void logPurchaseDetails(){
		try{
			String sql = "insert into transactionlogs (cc_number,fuel_type,fuel_liters,total_net_pay,timestamp) values (?,?,?,?,?)";
			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			
			Connection connection = (Connection) getServletContext.getAttribute("dbconn");
			
			PreparedStatement pstmnt = connection.prepareStatement(sql);
			
			pstmnt.setString(1, Security.encrypt(this.creditCardNumber));
			pstmnt.setString(2, Security.encrypt(this.gasType));
			pstmnt.setString(3, Security.encrypt(String.valueOf(this.liters)));
			pstmnt.setString(4, Security.encrypt(String.valueOf(this.totalAmount)));
			pstmnt.setString(5, Security.encrypt(timestamp.toString()));

			pstmnt.executeUpdate();
		}catch(SQLException sqle){
			System.err.println(sqle.getMessage());
		}
		
	}
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGasType() {
		return gasType;
	}

	public void setGasType(String gasType) {
		this.gasType = gasType;
	}
	
	public String getCreditCardType() {
		return creditCardType;
	}

	public void setCreditCardType(String creditCardType) {
		this.creditCardType = creditCardType;
	}

	public String getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	public double getPricePerLiterAmount() {
		return pricePerLiterAmount;
	}

	public void setPricePerLiterAmount(double pricePerLiterAmount) {
		this.pricePerLiterAmount = pricePerLiterAmount;
	}

	public double getPurchaseAmount() {
		return purchaseAmount;
	}

	public void setPurchaseAmount(double purchaseAmount) {
		this.purchaseAmount = purchaseAmount;
	}

	public double getVat() {
		return vat;
	}

	public void setVat(double vat) {
		this.vat = vat;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public double getLiters(){
		return liters;
	}
	
	public void setLiters(double liters) {
		this.liters = liters;
	}
	
	



}
