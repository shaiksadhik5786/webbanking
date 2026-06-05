<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Bank Login</title>
    <style>
        body { font-family: Arial, sans-serif; background:#f4f6f8; }
        .container { max-width: 350px; margin: 80px auto; background:#fff; padding:30px; border-radius:8px; box-shadow:0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align:center; color:#004080; }
        label { display:block; margin-top:10px; font-weight:bold; }
        input { width:100%; padding:10px; margin-top:5px; border:1px solid #ccc; border-radius:5px; }
        button { width:100%; padding:12px; margin-top:20px; background:#0073e6; color:white; border:none; border-radius:5px; cursor:pointer; font-size:16px; }
        button:hover { background:#005bb5; }
        p { text-align:center; margin-top:15px; }
        a { color:#0073e6; text-decoration:none; }

        /* Error message styling */
        .error {
            color: #d8000c;
            background: #ffbaba;
            border: 1px solid #d8000c;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Login</h2>

    <!-- Show error only if it's not empty -->
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>

    <form action="/validate" method="post">
        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Login</button>
    </form>
    <p>Don’t have an account? <a href="/registration">Register here</a></p>
</div>
</body>
</html>
