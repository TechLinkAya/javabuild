package com.goshen.wandaapp;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BalanceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
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
