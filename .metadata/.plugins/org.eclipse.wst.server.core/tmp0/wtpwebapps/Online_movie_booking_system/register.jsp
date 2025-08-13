<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register - MovieZone</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #141e30, #243b55);
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .register-container {
      background: rgba(0, 0, 0, 0.7);
      padding: 50px 40px;
      border-radius: 15px;
      box-shadow: 0 0 15px rgba(255, 255, 255, 0.1);
      width: 360px;
    }

    .register-container h2 {
      text-align: center;
      margin-bottom: 30px;
      font-size: 26px;
      font-weight: 600;
    }

    .register-container input[type="text"],
    .register-container input[type="email"],
    .register-container input[type="password"] {
      width: 100%;
      padding: 14px;
      margin: 18px 0;
      border: none;
      border-radius: 8px;
      background: #f1f1f1;
      color: #333;
      font-size: 16px;
    }

    .register-container input[type="submit"] {
      width: 100%;
      padding: 14px;
      background: #27ae60;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s ease;
      margin-top: 20px;
    }

    .register-container input[type="submit"]:hover {
      background: #1e8449;
    }

    .register-container a {
      color: #ccc;
      font-size: 14px;
      display: block;
      text-align: center;
      margin-top: 20px;
      text-decoration: none;
    }

    .register-container a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="register-container">
    <h2>📝 Create an Account</h2>
    <form action="RegisterServlet" method="post">
      <input type="text" name="name" placeholder="Full Name" required>
      <input type="email" name="email" placeholder="Email Address" required>
      <input type="password" name="password" placeholder="Password" required>
      <input type="submit" value="Register">
    </form>
    <a href="login.jsp">Already registered? Login here</a>
  </div>
</body>
</html>