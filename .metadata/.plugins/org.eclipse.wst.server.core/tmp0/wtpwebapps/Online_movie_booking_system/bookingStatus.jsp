<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Booking Status</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .status-card {
      background: rgba(255, 255, 255, 0.08);
      backdrop-filter: blur(8px);
      border-radius: 20px;
      padding: 40px;
      width: 400px;
      text-align: center;
      box-shadow: 0 10px 25px rgba(0, 255, 204, 0.2);
      animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: scale(0.95); }
      to { opacity: 1; transform: scale(1); }
    }

    .checkmark {
      font-size: 64px;
      color: #00ffcc;
      margin-bottom: 10px;
      animation: pop 0.6s ease-in-out;
    }

    @keyframes pop {
      0%   { transform: scale(0); opacity: 0; }
      60%  { transform: scale(1.2); opacity: 1; }
      100% { transform: scale(1); }
    }

    .status-card h2 {
      font-size: 24px;
      margin-bottom: 20px;
      color: #00ffcc;
    }

    .info-line {
      margin: 10px 0;
      font-size: 16px;
      color: #ffffffcc;
    }

    .info-line strong {
      color: #00ffcc;
    }

    .back-btn {
      margin-top: 30px;
      padding: 10px 20px;
      background-color: #00ffcc;
      color: #000;
      border: none;
      border-radius: 8px;
      font-weight: bold;
      text-decoration: none;
      display: inline-block;
      transition: background 0.3s;
    }

    .back-btn:hover {
      background-color: #00ccb3;
    }

    @media (max-width: 480px) {
      .status-card {
        width: 90%;
        padding: 30px 20px;
      }
    }
  </style>
</head>
<body>

  <div class="status-card">
    <div class="checkmark">✅</div>
    <h2>Booking Confirmed!</h2>

    <div class="info-line"><strong>Movie:</strong> ${movie}</div>
    <div class="info-line"><strong>Show Time:</strong> ${time}</div>
    <div class="info-line"><strong>Seats:</strong> ${seats}</div>

    <a href="index.jsp" class="back-btn">🔙 Back to Home</a>
  </div>

</body>
</html>