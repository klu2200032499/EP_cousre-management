<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
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
            background: linear-gradient(45deg, #004b8d, #007bff);
            height: 100vh;
            padding: 20px;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
            position: fixed;
            color: #fff;
        }

        .sidebar h2 {
            margin-bottom: 20px;
            font-size: 1.8em;
            text-align: center;
            font-weight: bold;
            text-shadow: 2px 2px #003366;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 12px;
            margin: 10px 0;
            font-weight: bold;
            font-size: 1.1em;
            transition: background-color 0.3s, transform 0.2s;
            border-radius: 8px;
            text-shadow: 1px 1px #003366;
        }

        .sidebar a:hover {
            background-color: #0056b3;
            transform: translateX(8px);
        }

        .logout {
            background-color: #d9534f;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            margin-top: 30px;
            display: block;
            transition: background-color 0.3s;
            text-shadow: 1px 1px #c9302c;
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
            font-size: 2.6em;
            color: #003366;
            text-align: center;
            margin-bottom: 40px;
            text-shadow: 2px 2px #bbb;
        }

        /* Add Course Section */
        .add-course {
            margin-bottom: 40px;
            text-align: center;
        }

        .add-course input, .add-course button {
            padding: 10px;
            margin: 5px;
            font-size: 1.1em;
            border: 2px solid #007bff;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .add-course button {
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

        .add-course button:hover {
            background-color: #0056b3;
        }

        /* Success Message Styles */
        .success-message {
            display: none;
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
            padding: 15px;
            border-radius: 5px;
            margin: 20px auto;
            width: 80%;
            text-align: center;
            font-size: 1.2em;
        }

        /* Progress Section */
        .progress-section {
            margin-top: 40px;
            text-align: center;
        }

        .progress-table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
        }

        .progress-table th, .progress-table td {
            border: 1px solid #007bff;
            padding: 12px;
            text-align: center;
        }

        .progress-table th {
            background-color: #007bff;
            color: white;
        }

        .progress-table tr:nth-child(even) {
            background-color: #f2f2f2;
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
        }
    </style>
</head>
<body>
    <!-- Left Sidebar -->
    <div class="sidebar">
        <h2>Admin Menu</h2>
        <a href="http://localhost:2025/dashboard1">Dashboard</a>
        <a href="http://localhost:2025/profile1">Profile</a>
        <a href="http://localhost:2025/settings1">Settings</a>
        <a href="http://localhost:2025/loginA" class="logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main">
        <h1>Admin Dashboard</h1>

        <!-- Success Message -->
        <div class="success-message" id="successMessage">Course Added Successfully!</div>

        <!-- Add Course Section -->
        <div class="add-course">
            <h2>Add a New Course</h2>
            <input type="text" placeholder="Course Name" id="courseName" required>
            <input type="text" placeholder="Course Description" id="courseDescription" required>
            <button id="addCourseBtn">Add Course</button>
        </div>

        <!-- Progress Section -->
        <div class="progress-section">
            <h2>Student Progress</h2>
            <table class="progress-table">
                <thead>
                    <tr>
                        <th>Student Name</th>
                        <th>Course</th>
                        <th>Progress (%)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>John Doe</td>
                        <td>C Language</td>
                        <td>80</td>
                    </tr>
                    <tr>
                        <td>Jane Smith</td>
                        <td>Java Language</td>
                        <td>60</td>
                    </tr>
                    <tr>
                        <td>Michael Brown</td>
                        <td>DBMS</td>
                        <td>70</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        document.getElementById('addCourseBtn').addEventListener('click', function() {
            const courseName = document.getElementById('courseName').value;
            const courseDescription = document.getElementById('courseDescription').value;

            // Here you can add code to handle the addition of the course, e.g., an AJAX call to the backend.

            // Show success message
            const successMessage = document.getElementById('successMessage');
            successMessage.style.display = 'block';

            // Reset the form fields
            document.getElementById('courseName').value = '';
            document.getElementById('courseDescription').value = '';

            // Hide the success message after 3 seconds
            setTimeout(() => {
                successMessage.style.display = 'none';
            }, 3000);
        });
    </script>
</body>
</html>
