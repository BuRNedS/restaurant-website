package com.burneds.chaskaEats;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String mail = request.getParameter("email");
		String contact = request.getParameter("phone");
		String datee = request.getParameter("dob");
		String mem = request.getParameter("membership");
		String pass = request.getParameter("pass");
		RequestDispatcher dispatcher= null;
		Connection con = null;
		
		if(name==null || name.equals("")) {
			request.setAttribute("status", "InvalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		if(mail==null || mail.equals("")) {
			request.setAttribute("status", "InvalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(contact==null || contact.equals("")) {
			request.setAttribute("status", "InvalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(datee==null || datee.equals("")) {
			request.setAttribute("status", "InvalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(mem==null || mem.equals("")) {
			request.setAttribute("status", "InvalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		if(pass==null || pass.equals("")) {
			request.setAttribute("status", "InvalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/chaskaeats","root","Pass@123");
			PreparedStatement pst= con.prepareStatement("insert into userr (uname,email,mobile_no,dob,memType,pass) values(?,?,?,?,?,?) ");
			pst.setString(1, name);
			pst.setString(2, mail);
			pst.setString(3, contact);
			pst.setString(4, datee);
			pst.setString(5, mem);
			pst.setString(6, pass);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			}
			else {
				request.setAttribute("status","failed");
			}
			
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		
	}

}
