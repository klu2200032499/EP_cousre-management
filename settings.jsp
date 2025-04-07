<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings</title>
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

        /* Settings Section */
        .settings-card {
            width: 100%;
            max-width: 600px;
            background-color: #fff;
            padding: 40px;
            margin: auto;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }

        .settings-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .settings-item label {
            font-weight: bold;
            color: #333;
        }

        .settings-item input {
            width: 60%;
            padding: 8px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        /* Save Button Styles */
        .btn {
            padding: 10px 20px;
            font-size: 1em;
            font-weight: bold;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            display: block;
            margin: 20px auto;
            width: 50%;
        }

        .btn.save {
            background-color: #007bff;
        }

        .btn.save:hover {
            background-color: #0069d9;
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

            .settings-card {
                padding: 20px;
            }

            .settings-item input {
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
        <a href="http://localhost:2025/profile">Profile</a>
        <a href="http://localhost:2025/settings" class="active">Settings</a>
        <a href="http://localhost:2025/loginS" class="logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main">
        <h1>Settings</h1>
        <div class="settings-card">
            <!-- Username Field -->
            <div class="settings-item">
                <label for="username">Username:</label>
                <input type="text" id="username" value="user123" readonly>
            </div>

            <!-- Email Field -->
            <div class="settings-item">
                <label for="email">Email:</label>
                <input type="email" id="email" value="user@example.com" readonly>
            </div>

            <!-- Old Password Field -->
            <div class="settings-item">
                <label for="oldPassword">Old Password:</label>
                <input type="password" id="oldPassword" placeholder="Enter old password" required>
            </div>

            <!-- New Password Field -->
            <div class="settings-item">
                <label for="newPassword">New Password:</label>
                <input type="password" id="newPassword" placeholder="Enter new password" required>
            </div>

            <!-- Save Button -->
            <button class="btn save" onclick="saveSettings()">Save Changes</button>
        </div>
    </div>

    <script>
        // Function to save settings
        function saveSettings() {
            const oldPassword = document.getElementById('oldPassword').value;
            const newPassword = document.getElementById('newPassword').value;

            if (oldPassword && newPassword) {
                alert('Settings updated successfully!');
                // Implement actual save logic here (e.g., AJAX call to server)
            } else {
                alert('Please fill in all fields.');
            }
        }
    </script>
</body>
</html>
