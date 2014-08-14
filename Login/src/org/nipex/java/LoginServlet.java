package org.nipex.java;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, 
	IOException {
		
		String userName, password;
		
		userName = request.getParameter("userName");
		password = request.getParameter("password");
		
	    response.setContentType("text/html");
	    PrintWriter out = response.getWriter();
		
		out.println("Witaj " + userName + " " + password);
		
		//response.sendRedirect("login.jsp");
		}
	}


