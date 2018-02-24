package gas.station.listener;

import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;

import gas.station.utility.Security;

@WebListener
public class DatabaseServletContextListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		try{
			ServletContext context = sce.getServletContext();
			Class.forName(Security.decrypt(context.getInitParameter("jdbcDriver")));
			
			Connection connection = DriverManager.getConnection(
					Security.decrypt(context.getInitParameter("jdbcUrl")),
					Security.decrypt(context.getInitParameter("dbUsername")),
					Security.decrypt(context.getInitParameter("dbPassword")));
			
			if(connection != null){
				context.log("connection is initialized");
				
				context.setAttribute("dbconn", connection);
			} else{
				context.log("connection is null.");
			}
		} catch(ClassNotFoundException cfne){
			System.err.println(cfne.getMessage());
		} catch(SQLException sqle){
			System.err.println(sqle.getMessage());
		}
	}
	
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.err.println("WARNING");

	}

}
