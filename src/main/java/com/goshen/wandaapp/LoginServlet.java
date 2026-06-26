package com.goshen.wandaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    // Serve the login page on a GET request
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    // Process authentication on a POST request
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Simple validation rule (Change these to your preferred credentials)
        if ("admin".equals(username) && "goshen2026".equals(password)) {
            // Create a session to keep the user logged in
            HttpSession session = request.getSession();
            session.setAttribute("user", username);
            
            // Redirect straight to your existing balance dashboard servlet path
            response.sendRedirect("balance"); 
        } else {
            // Send back to the page with an error notice
            request.setAttribute("errorMessage", "Invalid Username or Password!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
