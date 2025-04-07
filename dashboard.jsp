<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
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

        /* Cards Layout */
        .items-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center; /* Centering items in the grid */
        }

        .item {
            background-color: #f9f9f9; /* Light background for items */
            border-radius: 15px; /* Rounded edges for items */
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
            position: relative; /* For the hover effect */
            flex: 1 1 calc(25% - 20px); /* Adjust to 4 items per row */
            text-align: center; /* Center text within the items */
        }

        .item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .item-title {
            font-weight: bold;
            font-size: 1.5em;
            color: #2980b9; /* Bright color for titles */
            margin-bottom: 10px;
            border-bottom: 2px solid #3498db; /* Bottom border for titles */
            padding-bottom: 5px;
        }

        .assignment, .material {
            color: #555;
            font-size: 1em;
            margin: 5px 0;
        }

        .submit-btn {
            background-color: #27ae60; /* Green for submit */
            color: white;
            border: none;
            border-radius: 30px; /* Round submit button */
            padding: 10px 15px;
            cursor: pointer;
            font-weight: bold;
            position: relative; /* Positioning the button */
            top: 10px; /* Align to the top */
        }

        .submit-btn:hover {
            background-color: #219653;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .items-grid .item {
                flex: 1 1 calc(50% - 20px); /* Adjust to 2 items per row */
            }

            .main {
                margin-left: 0;
                padding: 20px;
            }

            .sidebar {
                width: 200px;
            }
        }

        @media (max-width: 480px) {
            .items-grid .item {
                flex: 1 1 100%; /* Full width on small screens */
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
        <h1>Welcome to Your Dashboard</h1>

        <!-- Enrolled Courses Section -->
        <div class="section">
            <h2>Your Courses</h2>
            <div class="items-grid">
                <div class="item">
                    <div class="item-title">Introduction to Java</div>
                    <div class="assignment">Assignments:</div>
                    <ul>
                        <li class="assignment">Assignment 1 - Due: 2024-10-10
                            <button class="submit-btn">Submit</button>
                        </li>
                        <li class="assignment">Assignment 2 - Due: 2024-10-15
                            <button class="submit-btn">Submit</button>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="item-title">Web Development</div>
                    <div class="assignment">Assignments:</div>
                    <ul>
                        <li class="assignment">Assignment 1 - Due: 2024-10-12
                            <button class="submit-btn">Submit</button>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="item-title">Data Structures</div>
                    <div class="assignment">Assignments:</div>
                    <ul>
                        <li class="assignment">Assignment 1 - Due: 2024-10-14
                            <button class="submit-btn">Submit</button>
                        </li>
                    </ul>
                </div>
               
            </div>
        </div>

        <!-- Course Materials Section -->
        <div class="section">
            <h2>Course Materials</h2>
            <div class="items-grid">
                <div class="item">
                    <div class="item-title">Introduction to Java - Material</div>
                    <div class="material">
                        <a href="#">Download Material </a>
                    </div>
                </div>
                <div class="item">
                    <div class="item-title">Web Development - Material</div>
                    <div class="material">
                        <a href="#">Download Material </a>
                    </div>
                </div>
                <div class="item">
                    <div class="item-title">Data Structures - Material</div>
                    <div class="material">
                        <a href="#">Download Material </a>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>
