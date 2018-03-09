package gas.station.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import gas.station.listener.UserHttpSessionListener;
import gas.station.utility.Security;


public class AdminBean {
	private String name;
	private String password;
	
	private Connection connection;
	
	public AdminBean() {
	}
	
	public AdminBean(Connection connection,
			String ... value) { //... is the  same array
		this.name = value[0];
		this.password = value[1];
		this.connection = connection;
		//create a server log entry that 
		//says "Bean initialization finished"

		System.out.println("Connection initialization finished sa adminbean");
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
		
	public boolean isUserValid() {
		boolean isValid = false;
		
		try{
			String sql = "select * from admin where username = ? and password = ?";
							
			PreparedStatement pstmnt = connection.prepareStatement(sql);
			
			pstmnt.setString(1, Security.encrypt(this.name));
			pstmnt.setString(2, Security.encrypt(this.password));

			ResultSet rs = pstmnt.executeQuery();
			
			if(rs.next() == false){
			
			} else{
				isValid = true;
				
				System.out.println("A new session has been created.");
				
				UserHttpSessionListener.userCount++;
				System.out.println("Total session count: " 
					+ UserHttpSessionListener.userCount);
			}

		}catch(SQLException sqle){
			System.err.println(sqle.getMessage());
		}
	
		return isValid;
	}
	
	
	public ResultSet getLogs() {
		ResultSet logs = null;
		
		String sql = "select * from transactionlogs";
		
		try {
			PreparedStatement pstmnt = connection.prepareStatement(sql);
			logs = pstmnt.executeQuery();
			
		} catch (SQLException sqle) {
			System.err.println(sqle.getMessage());
		}
		
		return logs;
	}
}
