<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <style>
        /* CSS styles for the entire page */
        body {
            font-family: 'Arial', sans-serif;
            background: url("${pageContext.request.contextPath}/loginbg.jpg") no-repeat center 5%; /* Set the background image and position it */
            background-size: cover; /* Cover the entire background */
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0;
            height: 100vh;
            justify-content: center;
        }

        /* Navbar styles */
        .navbar {
            width: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 10px 0;
            position: fixed;
            top: 0;
            right: 0;
            text-align: center;
            z-index: 1;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #007bff;
            text-decoration: none;
            margin: 0 20px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Container for login form */
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for the form */
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            margin-top: 60px; /* Space for navbar */
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .input-group {
            margin-bottom: 15px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #007bff;
        }

        button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a href="http://localhost:2025/signup1">Sign Up</a> <!-- Link to signup -->
        <a href="http://localhost:2025/loginS">Login</a> <!-- Link to login -->
    </div>

    <!-- Login Form Container -->
    <div class="container">
        <h2>Student Login</h2>
        <form action="${pageContext.request.contextPath}/home1" method="GET"> <!-- Change action to /home1 -->
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        <div class="login-link">
            <p>I am Admin -> <a id="loginLink" href="http://localhost:2025/loginA">Admin Login</a></p>
        </div>
    </div>
</body>
</html>
