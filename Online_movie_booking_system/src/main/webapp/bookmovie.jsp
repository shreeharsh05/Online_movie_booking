<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String selectedMovie = request.getParameter("movie");
    if (selectedMovie == null) selectedMovie = "";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Book Ticket - <%= selectedMovie %></title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      padding: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #fff;
    }

    .form-container {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      padding: 40px 30px;
      border-radius: 20px;
      box-shadow: 0 12px 30px rgba(0, 255, 204, 0.2);
      width: 420px;
      animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: scale(0.95); }
      to { opacity: 1; transform: scale(1); }
    }

    h2 {
      text-align: center;
      color: #00ffcc;
      margin-bottom: 25px;
      font-size: 1.5rem;
    }

    label {
      display: block;
      margin-top: 16px;
      margin-bottom: 6px;
      font-weight: 600;
      color: #ccc;
    }

    select,
    input[type="number"] {
      width: 100%;
      padding: 12px;
      border-radius: 10px;
      border: none;
      font-size: 15px;
      background: #ffffffdd;
      color: #222;
      transition: box-shadow 0.3s ease;
    }

    select:focus,
    input[type="number"]:focus {
      outline: none;
      box-shadow: 0 0 10px #00ffcc;
    }

    input[type="submit"] {
      width: 100%;
      margin-top: 28px;
      padding: 14px;
      font-size: 16px;
      font-weight: bold;
      background-color: #00ffcc;
      color: #000;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: background 0.3s, transform 0.2s;
    }

    input[type="submit"]:hover {
      background-color: #00ccb3;
      transform: scale(1.03);
    }

    @media (max-width: 480px) {
      .form-container {
        width: 90%;
        padding: 30px 20px;
      }
    }
  </style>
</head>
<body>

  <div class="form-container">
    <h2>🎟 Book Ticket for<br><span style="color:#fff;"><%= selectedMovie %></span></h2>

    <form action="BookingServlet" method="post">
      <input type="hidden" name="movie" value="<%= selectedMovie %>">

      <label for="time">Show Time:</label>
      <select name="time" id="time" required>
        <option value="">-- Select Time --</option>
        <option>10:00 AM</option>
        <option>1:00 PM</option>
        <option>4:00 PM</option>
        <option>7:00 PM</option>
        <option>9:30 PM</option>
      </select>

      <label for="seats">Seats:</label>
      <input type="number" name="seats" id="seats" min="1" max="10" placeholder="Number of seats" required>

      <input type="submit" value="Book Now">
    </form>
  </div>

</body>
</html>