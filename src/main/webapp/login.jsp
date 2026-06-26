<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>WandaApp - Secure Portal Login</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .login-card { background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 10px rgba(0,0,0,0.1); width: 100%; max-width: 400px; text-align: center; }
        .logo { width: 80px; height: 80px; margin-bottom: 15px; }
        h1 { color: #1a365d; margin: 0 0 5px 0; font-size: 26px; }
        .subtitle { color: #718096; font-size: 14px; margin-bottom: 30px; }
        .form-group { text-align: left; margin-bottom: 20px; }
        label { display: block; font-weight: bold; color: #4a5568; margin-bottom: 5px; }
        input[type="text"], input[type="password"] { width: 100%; padding: 10px; border: 1px solid #cbd5e0; border-radius: 4px; box-sizing: border-box; }
        button { width: 100%; padding: 12px; background-color: #1a365d; color: white; border: none; border-radius: 4px; font-size: 16px; font-weight: bold; cursor: pointer; margin-top: 10px; }
        button:hover { background-color: #2b6cb0; }
        .error { color: #e53e3e; margin-bottom: 15px; font-size: 14px; }
    </style>
</head>
<body>

<div class="login-card">
    <img class="logo" src="images/logo.png" alt="Goshen Tech Logo" onerror="this.src='https://via.placeholder.com/80/1a365d/ffffff?text=G'">
    <h1>WandaApp Portal</h1>
    <div class="subtitle">Goshen Technologies Financial Interoperability Engine</div>

    <% if (request.getAttribute("errorMessage") != null) { %>
        <div class="error"><%= request.getAttribute("errorMessage") %></div>
    <% } %>

    <form action="login" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Secure Login</button>
    </form>
</div>

</body>
</html>
