<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            display: flex;
            margin: 0;
            background-color: #f5f7fa;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #004b8d;
            height: 100vh;
            padding: 20px;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
            position: fixed;
            color: #fff;
        }

        .sidebar h2 {
            margin-bottom: 20px;
            color: #fff;
            font-size: 1.6em;
            text-align: center;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px;
            margin: 10px 0;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s;
            border-radius: 5px;
        }

        .sidebar a:hover {
            background-color: #007bff;
            transform: translateX(5px);
        }

        .logout {
            background-color: #d9534f;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            margin-top: 20px;
            display: block;
        }

        .logout:hover {
            background-color: #c9302c;
        }

        /* Main Content Styles */
        .main {
            margin-left: 270px; /* Space for the sidebar */
            padding: 40px;
            flex-grow: 1;
        }

        .main h1 {
            font-size: 2.2em;
            color: #003366;
            text-align: center;
            margin-bottom: 40px;
        }

        /* Profile Section */
        .profile-card {
            width: 100%;
            max-width: 600px;
            background-color: #fff;
            padding: 40px;
            margin: auto;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }

        .profile-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .profile-item label {
            font-weight: bold;
            color: #333;
        }

        .profile-item input {
            width: 60%;
            padding: 8px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
            cursor: not-allowed;
            color: #333;
        }

        /* Enrolled Courses Section */
        .courses-section {
            margin-top: 40px;
        }

        .course {
            background-color: #e9ecef;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .course-title {
            font-weight: bold;
            color: #333;
        }

        .course-description {
            color: #555;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .main {
                margin-left: 0;
                padding: 20px;
            }

            .sidebar {
                width: 200px;
            }

            .profile-card {
                padding: 20px;
            }

            .profile-item input {
                width: 55%;
            }
        }
    </style>
</head>
<body>
    <!-- Left Sidebar -->
    <div class="sidebar">
        <h2>Student Menu</h2>
        <a href="http://localhost:2025/dashboard">Dashboard</a>
        <a href="http://localhost:2025/profile" class="active">Profile</a>
        <a href="http://localhost:2025/settings">Settings</a>
        <a href="http://localhost:2025/loginS" class="logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main">
        <h1>Your Profile</h1>
        <div class="profile-card">
            <!-- Username Field -->
            <div class="profile-item">
                <label for="username">Username:</label>
                <input type="text" id="username" value="user123" readonly>
            </div>

            <!-- Email Field -->
            <div class="profile-item">
                <label for="email">Email:</label>
                <input type="email" id="email" value="user@example.com" readonly>
            </div>
        </div>

        <!-- Enrolled Courses Section -->
        <div class="courses-section">
            <h2>Enrolled Courses</h2>
            <div class="course">
                <span class="course-title">Web Development</span>
                <span class="course-description">Learn the basics of building websites.</span>
            </div>
            <div class="course">
                <span class="course-title">Java Programming</span>
                <span class="course-description">Advanced concepts in Java programming.</span>
            </div>
            <div class="course">
                <span class="course-title">Data Structures</span>
                <span class="course-description">Understanding data structures for efficient coding.</span>
            </div>
            <div class="course">
                <span class="course-title">Database Management</span>
                <span class="course-description">Learn to manage databases effectively.</span>
            </div>
        </div>
    </div>
</body>
</html>
