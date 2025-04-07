<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        /* CSS styles for the entire page */
        body {
            font-family: 'Helvetica Neue', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center; /* Center items */
            overflow: hidden; /* Prevent scrolling */
            position: relative; /* Position for overlay */
            background: linear-gradient(135deg, #6e8efb 0%, #a777e3 100%); /* Background gradient */
        }

        /* Full-screen video styles */
        video {
            position: absolute;
            top: 0;
            left: 0;
            width: 105vw; /* Full width of the viewport */
            height: 100vh; /* Full height of the viewport */
            z-index: -1; /* Background video */
            object-fit: cover; /* Cover the entire viewport */
        }

        /* Overlay to make form stand out on video background */
        .overlay {
            background-color: rgba(0, 0, 0, 0.5); /* Darker overlay for better visibility */
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 0; /* Place behind all content */
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

        /* Container for signup form */
        .container {
            background-color: rgba(255, 255, 255, 0.95); /* Semi-transparent white background */
            border-radius: 30px;
            padding: 30px; /* Reduced padding */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            width: 340px; /* Reduced width */
            text-align: center;
            z-index: 2; /* Ensure form is above overlay */
            position: relative; /* Position for pseudo elements */
        }

        h2 {
            margin-bottom: 15px; /* Reduced margin */
            color: #333;
            font-size: 1.5em; /* Reduced font size */
        }

        .input-group {
            margin-bottom: 10px; /* Reduced margin */
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
        }

        input[type="text"], 
        input[type="email"], 
        input[type="password"] {
            width: calc(100% - 16px); /* Adjusted width */
            padding: 8px; /* Reduced padding */
            border: 2px solid #007bff;
            border-radius: 10px;
            font-size: 14px;
            transition: border-color 0.3s;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        input:focus {
            border-color: #0056b3;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        button {
            width: 100%;
            padding: 10px; /* Reduced padding */
            border: none;
            border-radius: 10px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s;
            font-weight: bold;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        button:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        .error {
            color: red;
            margin-top: 10px;
            font-weight: bold;
        }

        .success {
            color: green;
            margin-top: 10px;
            font-weight: bold;
        }

        .login-link {
            margin-top: 15px;
            text-align: center;
            color: #007bff;
        }

        .login-link a {
            text-decoration: none;
            font-weight: bold;
        }

        /* Role selection styles */
        .role-selection {
            margin-bottom: 10px; /* Reduced margin */
            display: flex;
            justify-content: space-around; /* Space between radio buttons */
        }

        .role-selection label {
            margin-right: 10px; /* Space between labels */
            color: #555;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .container {
                width: 90%; /* Responsive width */
            }
        }
    </style>
    <script>
        // JavaScript to handle form submission and redirect based on role
        document.addEventListener('DOMContentLoaded', function () {
            const form = document.getElementById('signupForm');
            const loginLink = document.getElementById('loginLink');

            // Update login link URL based on selected role
            const updateLoginLink = () => {
                const role = document.querySelector('input[name="role"]:checked').value;
                loginLink.href = role === 'student' ? "http://localhost:2025/loginS" : "http://localhost:2025/loginA";
            };

            // Attach change event to role selection
            document.querySelectorAll('input[name="role"]').forEach(radio => {
                radio.addEventListener('change', updateLoginLink);
            });

            form.addEventListener('submit', function (event) {
                event.preventDefault(); // Prevent default form submission

                // Redirect based on selected role
                const role = document.querySelector('input[name="role"]:checked').value;
                if (role === 'student') {
                    window.location.href = "http://localhost:2025/loginS";
                } else if (role === 'admin') {
                    window.location.href = "http://localhost:2025/loginA";
                }
                
                // Optionally, you can submit the form data here using AJAX if needed
                // e.g., using fetch API to send data to the server without page reload
            });

            // Initialize login link on page load
            updateLoginLink();
        });
    </script>
</head>
<body>
    <!-- Full-screen background video -->
    <video autoplay loop muted>
        <source src="${pageContext.request.contextPath}/videos/signupbg.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <!-- Dark overlay for background -->
    <div class="overlay"></div>

    <!-- Navbar -->
    <div class="navbar">
        <a href="http://localhost:2025/signup1">Sign Up</a> <!-- Link to signup -->
        <a href="http://localhost:2025/loginS">Login</a> <!-- Link to login -->
    </div>

    <!-- Signup Form Container -->
    <div class="container">
        <h2>Sign Up</h2>
        <form id="signupForm" action="/signup" method="POST">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group role-selection">
                <span>Register as:</span>
                <label>
                    <input type="radio" name="role" value="student" required checked> Student
                </label>
                <label>
                    <input type="radio" name="role" value="admin"> Admin
                </label>
            </div>
            <button type="submit">Create Account</button>
        </form>

        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        <c:if test="${not empty success}">
            <p class="success">${success}</p>
        </c:if>

        <!-- Already have an account? Login link -->
        <div class="login-link">
            <p>Already have an account? <a id="loginLink" href="http://localhost:2025/loginS">Login here</a></p>
        </div>
    </div>
</body>
</html>
