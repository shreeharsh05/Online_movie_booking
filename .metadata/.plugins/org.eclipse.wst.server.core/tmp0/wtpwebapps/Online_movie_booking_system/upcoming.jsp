<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>MovieZone - Premium UI</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: #0f2027;
      color: white;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* 🎞 Upcoming Movies (static layout) */
    .horizontal-slider-section {
      background: rgba(255, 255, 255, 0.05);
      padding: 20px 0;
    }

    .horizontal-slider-section h2 {
      text-align: center;
      font-size: 1.4rem;
      color: #00ffcc;
      margin-bottom: 14px;
    }

  .horizontal-slider-static {
  display: flex;
  justify-content: center;
  gap: 60px; /* increased spacing */
  flex-wrap: wrap;
  padding: 10px 40px;
}

.movie-slide {
  width: 200px; /* wider images */
  text-align: center;
}

.movie-slide img {
  width: 200px;
  height: 280px;
  border-radius: 14px;
  object-fit: cover;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  box-shadow: 0 0 16px rgba(0, 255, 204, 0.3);
}

    .movie-slide img:hover {
      transform: scale(1.05);
      box-shadow: 0 0 22px rgba(0, 255, 204, 0.6);
    }

    .hover-caption {
      margin-top: 6px;
      font-size: 0.9rem;
      color: #00ffcc;
      font-weight: bold;
    }

    h2 {
      text-align: center;
      margin: 16px 0 6px;
      font-size: 1.4rem;
      color: #00ffcc;
    }

    .now-showing-section {
      padding: 20px;
    }

    .movie-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 30px;
      padding: 10px;
    }

    .movie-card {
      background: rgba(255, 255, 255, 0.1);
      border-radius: 18px;
      width: 300px;
      box-shadow: 0 6px 16px rgba(0, 0, 0, 0.5);
      text-align: center;
      overflow: hidden;
      transition: transform 0.3s ease;
      position: relative;
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border: 1px solid rgba(255, 255, 255, 0.1);
    }

    .movie-card:hover {
      transform: translateY(-8px) scale(1.04);
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.6);
    }

    .movie-card img {
      width: 100%;
      height: 340px;
      object-fit: cover;
    }

    .movie-card h3 {
      margin: 10px 0 5px;
      font-size: 1.2rem;
      color: #00ffcc;
    }

    .genre-badge, .rating-badge {
      position: absolute;
      top: 12px;
      padding: 4px 10px;
      background: #00ffcc;
      color: #000;
      border-radius: 6px;
      font-size: 0.75rem;
      font-weight: bold;
    }

    .genre-badge {
      left: 12px;
    }

    .rating-badge {
      right: 12px;
    }

    .movie-card a {
      display: inline-block;
      margin: 10px auto 16px;
      padding: 10px 20px;
      background-color: #00ffcc;
      color: #000;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
    }

    .movie-card a:hover {
      background-color: #00ccb3;
    }
  </style>
</head>
<body>

 <!-- 🎞 Upcoming Movies Section -->
<div class="horizontal-slider-section">
  <h2>🎞 Upcoming Movies</h2>
  <div class="horizontal-slider-static">
    <div class="movie-slide">
      <img src="./war2.jpeg" alt="War 2">
      <div class="hover-caption">War 2</div>
    </div>
    <div class="movie-slide">
      <img src="./rajasaheb.jpeg" alt="Rajasaheb">
      <div class="hover-caption">Rajasaheb</div>
    </div>
    <div class="movie-slide">
      <img src="./superman.jpeg" alt="Superman">
      <div class="hover-caption">Superman</div>
    </div>
    <div class="movie-slide">
      <img src="./mufasa.jpeg" alt="Mufasa">
      <div class="hover-caption">Mufasa</div>
    </div>
  </div>
</div>

  <!-- 🍿 Now Showing Section -->
  <div class="now-showing-section">
    <h2>Now Showing</h2>
    <div class="movie-container">
      <div class="movie-card">
        <img src="./brahmastra.jpeg" alt="Brahmastra">
        <div class="genre-badge">Mythology</div>
        <div class="rating-badge">4.5⭐</div>
        <h3>Brahmastra Part-2</h3>
        <a href="${pageContext.request.contextPath}/bookmovie.jsp?movie=Brahmastra Part-2">Book</a>
      </div>

      <div class="movie-card">
        <img src="./ramayana.jpeg" alt="Ramayana">
        <div class="genre-badge">Mythology</div>
        <div class="rating-badge">4.7⭐</div>
        <h3>Ramayana</h3>
        <a href="${pageContext.request.contextPath}/bookmovie.jsp?movie=Ramayana">Book</a>
      </div>
    </div>
  </div>

</body>
</html>