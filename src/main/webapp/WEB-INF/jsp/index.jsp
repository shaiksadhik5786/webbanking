<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Bank - Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0; padding: 0;
            background-color: #f4f6f8;
            color: #333;
        }
        header {
            background-color: #004080;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            text-align: center;
            margin: 40px auto;
        }
        .btn {
            display: inline-block;
            margin: 15px;
            padding: 15px 30px;
            font-size: 18px;
            color: white;
            background-color: #0073e6;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #005bb5;
        }
        section {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
            text-align: left;
        }
        h2 {
            color: #004080;
        }
        footer {
            background-color: #004080;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to My Bank</h1>
    <p>Your trusted partner in secure banking</p>
</header>

<div class="container">
    <a href="/bank/registration" class="btn">Create Account</a>
    <a href="/bank/login" class="btn">Login to Account</a>
</div>

<section>
    <h2>About Our Bank</h2>
    <p>My Bank is committed to providing safe, reliable, and customer-friendly banking services. 
       We offer savings accounts, current accounts, and online facilities to manage your finances with ease.</p>

    <h2>How to Create an Account</h2>
    <ul>
        <li>Click on the <strong>Create Account</strong> button above.</li>
        <li>Fill in your personal details such as name, email, phone number, and address.</li>
        <li>Submit the form to generate your unique account number.</li>
    </ul>

    <h2>How to Login</h2>
    <ul>
        <li>Click on the <strong>Login to Account</strong> button above.</li>
        <li>Enter your registered email and password.</li>
        <li>View your account details, balance, and transactions securely.</li>
    </ul>
</section>

<footer>
    <p>&copy; 2026 My Bank. All rights reserved.</p>
</footer>

</body>
</html>
