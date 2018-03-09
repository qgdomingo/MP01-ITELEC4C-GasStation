package gas.station.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gas.station.model.AdminBean;

import java.sql.*;

public class ViewLogsActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ResultSet logRecords = new AdminBean(
				(Connection) getServletContext().getAttribute("dbconn"), 
				"", "")
			.getLogs();
		
		request.setAttribute("logRecord", logRecords);
		
		request.getRequestDispatcher("history.jsp").forward(request, response);
	}

}
