<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WandaApp - Mobile Money Interoperability Portal</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; color: #333; margin: 40px; }
        .card { background: white; padding: 25px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); max-width: 500px; margin: auto; }
        .header { border-bottom: 2px solid #1a365d; padding-bottom: 10px; margin-bottom: 20px; text-align: center; }
        h1 { color: #1a365d; margin: 0; font-size: 24px; }
        .subtitle { color: #718096; font-size: 14px; margin-top: 5px; }
        .metric-group { margin-bottom: 15px; display: flex; justify-content: space-between; font-size: 16px; }
        .label { font-weight: bold; color: #4a5568; }
        .value { color: #2d3748; }
        .balance { font-size: 18px; font-weight: bold; color: #2b6cb0; }
        .footer { text-align: center; margin-top: 25px; font-size: 12px; color: #a0aec0; }
    </style>
</head>
<body>

<div class="card">
    <div class="header">
        <h1>WandaApp Portal</h1>
        <div class="subtitle">Goshen Technologies Integration Engine</div>
    </div>
    
    <div class="metric-group">
        <span class="label">Customer Name:</span>
        <span class="value">${accountInfo.clientName}</span>
    </div>
    <div class="metric-group">
        <span class="label">Account Number:</span>
        <span class="value">${accountInfo.accountNumber}</span>
    </div>
    <div class="metric-group">
        <span class="label">Wanda Bank Balance:</span>
        <span class="value balance">${accountInfo.bankBalance}</span>
    </div>
    <div class="metric-group">
        <span class="label">Linked MNO Wallet:</span>
        <span class="value">${accountInfo.linkedProvider}</span>
    </div>
    <div class="metric-group">
        <span class="label">Mobile Money Balance:</span>
        <span class="value balance" style="color: #dd6b20;">${accountInfo.momoBalance}</span>
    </div>
    <div class="metric-group">
        <span class="label">Sync Connection Status:</span>
        <span class="value" style="color: #38a169; font-weight: bold;">${accountInfo.status}</span>
    </div>

    <div class="footer">
        Powered by Goshen Tech Frameworks Engine v1.0
    </div>
</div>

</body>
</html>

