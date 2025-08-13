<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login - MovieZone</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      background: linear-gradient(to right, #1e3c72, #2a5298);
      font-family: 'Poppins', sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      color: #fff;
    }

    .login-container {
      background: rgba(0, 0, 0, 0.75);
      padding: 50px 40px;
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
      width: 360px;
    }

    .login-container h2 {
      margin-bottom: 30px;
      text-align: center;
      font-weight: 600;
      font-size: 26px;
    }

    .login-container input[type="email"],
    .login-container input[type="password"] {
      width: 100%;
      padding: 14px;
      margin: 18px 0;
      border: none;
      border-radius: 8px;
      background: #f1f1f1;
      color: #333;
      font-size: 16px;
    }

    .login-container input[type="submit"] {
      width: 100%;
      padding: 14px;
      background: #ff4b2b;
      border: none;
      border-radius: 8px;
      color: white;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s ease;
      margin-top: 20px;
    }

    .login-container input[type="submit"]:hover {
      background: #ff3a1a;
    }

    .login-container a {
      color: #ccc;
      font-size: 14px;
      display: block;
      text-align: center;
      margin-top: 20px;
      text-decoration: none;
    }

    .login-container a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>🎬 Login to MovieZone</h2>
    <form action="LoginServlet" method="post">
      <input type="email" name="email" placeholder="Enter your email" required>
      <input type="password" name="password" placeholder="Enter your password" required>
      <input type="submit" value="Login">
    </form>
    <a href="register.jsp">Don't have an account? Register</a>
  </div>
</body>
</html>