<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>My Bank - Account Home</title>
    <style>
        body { font-family: Arial, sans-serif; background:#f4f6f8; margin:0; padding:0; }
        header { background:#004080; color:white; padding:20px; text-align:center; }
        .container { max-width:800px; margin:40px auto; background:#fff; padding:30px; border-radius:8px; box-shadow:0 0 10px rgba(0,0,0,0.1); }
        h2 { color:#004080; margin-bottom:20px; }
        table { width:100%; border-collapse:collapse; margin-top:20px; }
        th, td { padding:12px; border:1px solid #ddd; text-align:left; }
        th { background:#0073e6; color:white; }
        tr:hover { background:#f1f1f1; }
        .logout { display:block; margin-top:20px; text-align:center; }
        .logout a { background:#0073e6; color:white; padding:10px 20px; border-radius:5px; text-decoration:none; }
        .logout a:hover { background:#005bb5; }
    </style>
</head>
<body>

<header>
    <h1>Welcome to My Bank</h1>
    <p>Secure Online Banking</p>
</header>

<div class="container">
    <h2>Hello, ${user.username}</h2>
    <table>
		<tr><th>Account Number</th><td>${user.accountnumber}</td></tr>
		<tr><th>Email</th><td>${user.email}</td></tr>
		<tr><th>Phone Number</th><td>${user.phonenumber}</td></tr>
		<tr><th>Balance</th><td>${user.balance}</td></tr>
		<tr><th>Address</th><td>${user.address}</td></tr>
		<tr><th>Age</th><td>${user.age}</td></tr>
		<tr><th>Account Open Date</th><td>${user.accountopendate}</td></tr>

    </table>

    <div class="logout">
        <a href="/logout">Logout</a>
    </div>
</div>

</body>
</html>
