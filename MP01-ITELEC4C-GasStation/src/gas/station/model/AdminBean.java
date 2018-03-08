package gas.station.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;

import gas.station.listener.UserHttpSessionListener;
import gas.station.utility.Security;


public class AdminBean {
	private String name;
	private String password;
	
	private ServletContext getServletContext;
	
	public AdminBean() {
	}
	
	public AdminBean(ServletContext getServletContext,
			String ... value) { //... is the  same array
		this.name = value[0];
		this.password = value[1];
		this.getServletContext = getServletContext;
		//create a server log entry that 
		//says "Bean initialization finished"
		getServletContext.log("Bean initialization finished");
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
		
		//perform decryption on input name and value on config
		try{
			String sql = "select * from admin where username = ? and password = ?";
				
			Connection connection = (Connection) getServletContext.getAttribute("dbconn");
			
			PreparedStatement pstmnt = connection.prepareStatement(sql);
			
			pstmnt.setString(1, Security.encrypt(this.name));
			pstmnt.setString(2, Security.encrypt(this.password));

			ResultSet rs = pstmnt.executeQuery();
			
			if (rs.next()){
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
			Connection connection = (Connection) getServletContext.getAttribute("dbconn");
			
			PreparedStatement pstmnt = connection.prepareStatement(sql);
			logs = pstmnt.executeQuery();
			
		} catch (SQLException sqle) {
			System.err.println(sqle.getMessage());
		}
		
		return logs;
	}
}
