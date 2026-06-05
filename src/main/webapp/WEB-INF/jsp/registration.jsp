<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bank Account Registration</title>
    <style>
        body { font-family: Arial, sans-serif; background:#f4f6f8; }
        .container { max-width: 400px; margin: 50px auto; background:#fff; padding:30px; border-radius:8px; box-shadow:0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align:center; color:#004080; }
        label { display:block; margin-top:10px; font-weight:bold; }
        input { width:100%; padding:10px; margin-top:5px; border:1px solid #ccc; border-radius:5px; }
        button { width:100%; padding:12px; margin-top:20px; background:#0073e6; color:white; border:none; border-radius:5px; cursor:pointer; font-size:16px; }
        button:hover { background:#005bb5; }
        p { text-align:center; margin-top:15px; }
        a { color:#0073e6; text-decoration:none; }
		
		.message {
		    text-align: center;
		    margin: 10px 0;
		    font-weight: bold;
		    color: red;   /* use green for success if needed */
		}

    </style>
</head>
<body>
<div class="container">
    <h2>Create Account</h2>
	<p class="message">${msg}</p>
    <form action="/bank/createAccount" method="post">
        <label>Username</label>
        <input type="text" name="username" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <label>Address</label>
        <input type="text" name="address">

        <label>Phone Number</label>
        <input type="text" name="phonenumber">

        <label>Age</label>
        <input type="number" name="age">

        <button type="submit">Register</button>
    </form>
    <p>Already have an account? <a href="/bank/login">Login here</a></p>
</div>
</body>
</html>
