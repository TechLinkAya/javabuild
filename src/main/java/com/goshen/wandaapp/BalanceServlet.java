package com.goshen.wandaapp;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; /* Added for routing */
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; /* Added for session validation */

@WebServlet("/balance") /* Added annotation mapping */
public class BalanceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // --- Security Check ---
        // Check if a valid session exists. If not, bounce them to the login screen.
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login");
            return;
        }
        // ----------------------
        
        // Simulating the bank account balance and mobile money data payload
        Map<String, Object> accountData = new HashMap<>();
        accountData.put("clientName", "Ayafor Kayla");
        accountData.put("accountNumber", "110293847562");
        accountData.put("bankBalance", "450,000 XAF");
        accountData.put("momoBalance", "28,500 XAF");
        accountData.put("linkedProvider", "MTN MoMo");
        accountData.put("status", "Active / Synchronized");

        request.setAttribute("accountInfo", accountData);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
