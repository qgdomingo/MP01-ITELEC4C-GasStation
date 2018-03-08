package gas.station.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gas.station.model.AdminBean;
import gas.station.utility.Security;

public class ValidateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public void init() throws ServletException {
		System.out.println("in init method");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userNameInput = request.getParameter("username");
		String userPasswordInput = request.getParameter("password");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		AdminBean user = new AdminBean(getServletContext(), 
			userNameInput, userPasswordInput);
		
		if (user.isUserValid()) {
			
			HttpSession userSession = request.getSession(); //create a session
			
			//perform object binding on session
			userSession.setAttribute("userObj", user);
			
			//programmatic session timeout
			userSession.setMaxInactiveInterval(30);
			
			response.setStatus(HttpServletResponse.SC_OK);
			response.getWriter().write("success");
		} else {
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
		}	
	}
}
