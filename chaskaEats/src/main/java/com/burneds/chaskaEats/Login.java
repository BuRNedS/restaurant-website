package com.burneds.chaskaEats;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("username");
        String pass = request.getParameter("password");

        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp"); // Initialize with default dispatcher

        if (email == null || email.equals("")) {
            request.setAttribute("status", "InvalidEmail");
        } else if (pass == null || pass.equals("")) {
            request.setAttribute("status", "InvalidPassword");
        } else {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/chaskaeats", "root",
                        "Pass@123");
                PreparedStatement pst = con.prepareStatement("select * from userr where email = ? and pass = ?");
                pst.setString(1, email);
                pst.setString(2, pass);

                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    session.setAttribute("name", rs.getString("email"));
                    dispatcher = request.getRequestDispatcher("loggedInUser.jsp");
                } else {
                    request.setAttribute("status", "failed");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        dispatcher.forward(request, response); // Forward the request with the appropriate dispatcher
    }
}
