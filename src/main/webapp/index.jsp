<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3D Student Login</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            perspective: 800px;
            background-color: #3498db;
        }

        .login-container {
            width: 200px;
            height: 200px;
            transform-style: preserve-3d;
            animation: rotate 5s infinite linear;
        }

        .cube {
            width: 100%;
            height: 100%;
            transform-style: preserve-3d;
            transform: translateZ(-100px);
        }

        .face {
            position: absolute;
            width: 100%;
            height: 100%;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .front {
            transform: translateZ(100px);
        }

        .back {
            transform: rotateY(180deg) translateZ(100px);
        }

        .left {
            transform: rotateY(-90deg) translateZ(100px);
        }

        .right {
            transform: rotateY(90deg) translateZ(100px);
        }

        .top {
            transform: rotateX(90deg) translateZ(100px);
        }

        .bottom {
            transform: rotateX(-90deg) translateZ(100px);
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .input-group input {
            width: 80%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .login-btn {
            background-color: #2ecc71;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #27ae60;
        }

        @keyframes rotate {
            from { transform: rotateY(0deg); }
            to { transform: rotateY(360deg); }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="cube">
            <div class="face front">
                <h2>Student Login</h2>
                <div class="input-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" placeholder="Enter your username">
                </div>
                <div class="input-group">
                    <label for="password">Password:::::</label>
                    <input type="password" id="password" placeholder="Enter your password">
                </div>
                <button class="login-btn" onclick="login()">Login</button>
            </div>
            <div class="face back"></div>
            <div class="face left"></div>
            <div class="face right"></div>
            <div class="face top"></div>
            <div class="face bottom"></div>
        </div>
    </div>

    <script>
        function login() {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;

            if (username === 'student' && password === 'password') {
                alert('Login successful! Welcome, ' + username + '!');
            } else {
                alert('Login failed. Please check your username and password.');
            }
        }
    </script>
</body>
</html>
