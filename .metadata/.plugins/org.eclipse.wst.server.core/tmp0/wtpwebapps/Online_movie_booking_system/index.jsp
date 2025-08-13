<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>MovieZone - Book Tickets</title>

  <!-- 🎨 Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@600&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

  <style>
    body {
      margin: 0;
      display: flex;
      height: 100vh;
      font-family: 'Open Sans', sans-serif;
      background: linear-gradient(120deg, #1f1c2c, #928dab);
      color: #fff;
      overflow: hidden;
    }

    /* 🔘 Left Content Panel */
    .content {
      width: 50%;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 40px;
      z-index: 2;
    }

    h1 {
      font-family: 'Cinzel', serif;
      font-size: 3rem;
      margin-bottom: 30px;
      text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.5);
    }

    a.button {
      font-weight: 600;
      display: inline-block;
      padding: 14px 30px;
      margin: 15px;
      background: #ff6b6b;
      color: #fff;
      text-decoration: none;
      border-radius: 10px;
      transition: 0.3s ease;
      font-size: 1rem;
      box-shadow: 0 4px 12px rgba(0,0,0,0.3);
    }

    a.button:hover {
      background: #ff3b3b;
    }

    /* 🎞️ Right Vertical Slider */
   /* 🎞️ Right Vertical Slider */
.slider-panel {
  width: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  background: rgba(0, 0, 0, 0.15);
  overflow: hidden;
  position: relative;
}

.vertical-slider-track {
  display: flex;
  flex-direction: column;
  animation: scroll-vertical 40s linear infinite;
}

/* ✅ Increased Width, Height and Premium Styling */
.vertical-slide {
  width: 320px; /* Increased width */
  height: 480px; /* Increased height */
  margin: 16px auto;
  border-radius: 18px;
  overflow: hidden;
  box-shadow: 0 8px 24px rgba(0,0,0,0.5);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  border: 2px solid #ffffff30;
}

.vertical-slide:hover {
  transform: scale(1.05);
  box-shadow: 0 12px 28px rgba(0,0,0,0.6);
  border-color: #ff6b6b;
}

.vertical-slide img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: filter 0.3s ease;
  filter: brightness(95%) contrast(105%);
}

.vertical-slide:hover img {
  filter: brightness(100%) contrast(110%);
}

@keyframes scroll-vertical {
  0% { transform: translateY(0); }
  100% { transform: translateY(-50%); }
}
  </style>
</head>
<body>

  <!-- Left: Register/Login -->
  <div class="content">
    <h1>🎬 Welcome to MovieZone</h1>
    <a href="register.jsp" class="button">Register</a>
    <a href="login.jsp" class="button">Login</a>
  </div>

  <!-- Right: Vertical Slider -->
  <div class="slider-panel">
    <div class="vertical-slider-track">
      <!-- Add movie posters -->
      <div class="vertical-slide"><img src="./animal.jpeg" alt="Animal"></div>
      <div class="vertical-slide"><img src="./Tu_Jhoothi_Main_Makkaar_poster.jpeg" alt="TJMM"></div>
      <div class="vertical-slide"><img src="./barfi.jpeg" alt="Barfi"></div>
      <div class="vertical-slide"><img src="./Sanju.jpeg" alt="Sanju"></div>
      <div class="vertical-slide"><img src="./ye_jawani_hai_diwani.jpeg" alt="YJHD"></div>
      <div class="vertical-slide"><img src="./rockstar.jpeg" alt="Rockstar"></div>
      <div class="vertical-slide"><img src="./Brahmastra_Part_One.jpeg" alt="Brahmastra"></div>

      <!-- Repeat to ensure smooth scroll -->
      <div class="vertical-slide"><img src="./animal.jpeg" alt="Animal"></div>
      <div class="vertical-slide"><img src="./Tu_Jhoothi_Main_Makkaar_poster.jpeg" alt="TJMM"></div>
      <div class="vertical-slide"><img src="./barfi.jpeg" alt="Barfi"></div>
      <div class="vertical-slide"><img src="./Sanju.jpeg" alt="Sanju"></div>
      <div class="vertical-slide"><img src="./ye_jawani_hai_diwani.jpeg" alt="YJHD"></div>
      <div class="vertical-slide"><img src="./rockstar.jpeg" alt="Rockstar"></div>
      <div class="vertical-slide"><img src="./Brahmastra_Part_One.jpeg" alt="Brahmastra"></div>
    </div>
  </div>

</body>
</html>
