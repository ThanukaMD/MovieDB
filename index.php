<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
            position: relative;
        }

        #bgVideo {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            z-index: -1;
        }

        h1 {
            color: white;
            font-size: 3rem;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        a {
            display: inline-block;
            background-color: #4a86e8;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            font-size: 1.5rem;
            margin-top: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        a:hover {
            background-color: #3c73d1;
        }

        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Welcome to the Movie App</h1>
        <a href="movies.php">View All Movies</a>
    </div>
    <video autoplay muted loop id="bgVideo">
        <source src="video.mp4" type="video/mp4">
    </video>
</body>
</html>
