<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Page</title>
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

        /* Courses Section */
        .courses {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: center;
        }

        .course {
            width: 300px;
            background: linear-gradient(135deg, #ffffff, #f0f4ff);
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .course:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.25);
        }

        .course img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .course-details {
            padding: 25px;
            text-align: center;
        }

        .course-title {
            font-size: 1.6em;
            margin-bottom: 15px;
            color: #333;
            font-weight: bold;
            text-shadow: 1px 1px #bbb;
        }

        .course-description {
            color: #555;
            line-height: 1.6;
            font-size: 1.1em;
            text-shadow: 1px 1px #f0f4ff;
        }

        /* Modal Styles */
        .modal {
            display: none; 
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
            animation: fadeIn 0.4s ease-in-out;
        }

        .modal h3 {
            font-size: 2em;
            color: #218838;
            margin-bottom: 20px;
            text-shadow: 2px 2px #cfe8c6;
        }

        .modal p {
            font-size: 1.2em;
            color: #555;
            margin-bottom: 20px;
        }

        .close-button {
            padding: 10px 20px;
            font-size: 1.1em;
            background: #218838;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
        }

        .close-button:hover {
            background: #1e7e34;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
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

            .courses {
                gap: 20px;
            }

            .course {
                width: 100%;
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
        <a href="http://localhost:2025/loginS" class="logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main">
        <h1>Available Courses</h1>
        <div class="courses">
            <!-- Course 1 -->
            <div class="course">
                <img src="/CImage.png" alt="Course 1 Image">
                <div class="course-details">
                    <h3 class="course-title">C Language</h3>
                    <p class="course-description">Learn the basics of C Language</p>
                </div>
            </div>

            <!-- Course 2 -->
            <div class="course">
                <img src="/JavaImage.png" alt="Course 2 Image">
                <div class="course-details">
                    <h3 class="course-title">Java Language</h3>
                    <p class="course-description">An advanced course for Java programming enthusiasts.</p>
                </div>
            </div>

            <!-- Course 3 -->
            <div class="course">
                <img src="/COAImage.png" alt="Course 3 Image">
                <div class="course-details">
                    <h3 class="course-title">Computer Organization</h3>
                    <p class="course-description">Understand the fundamentals of computer organization.</p>
                </div>
            </div>

            <!-- Course 4 -->
            <div class="course">
                <img src="/DBMSImage.png" alt="Course 4 Image">
                <div class="course-details">
                    <h3 class="course-title">DBMS</h3>
                    <p class="course-description">Understand database management systems with practical examples.</p>
                </div>
            </div>

            <!-- Course 5 -->
            <div class="course">
                <img src="/ATFLImage.jpg" alt="Course 5 Image">
                <div class="course-details">
                    <h3 class="course-title">ATFL</h3>
                    <p class="course-description">Learn the fundamentals of automata and formal languages.</p>
                </div>
            </div>

            <!-- Course 6 -->
            <div class="course">
                <img src="/PythonImage.jpeg" alt="Course 6 Image">
                <div class="course-details">
                    <h3 class="course-title">Python</h3>
                    <p class="course-description">Learn Python programming from scratch.</p>
                </div>
            </div>

            <!-- Course 7 -->
            <div class="course">
                <img src="/MPImage.jpeg" alt="Course 7 Image">
                <div class="course-details">
                    <h3 class="course-title">MP</h3>
                    <p class="course-description">Master the concepts of mobile programming.</p>
                </div>
            </div>
        </div>
    </div>

    <script>
        // JavaScript code for modal functionality can be added here if needed
    </script>
</body>
</html>
