<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        /* Modern UI Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        .error-msg {
            background-color: #ffebee;
            color: #c62828;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ef9a9a;
            margin-bottom: 15px;
            font-size: 14px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #666;
            font-size: 14px;
        }
        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box; 
        }
        input:focus {
            outline: none;
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.2);
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }
        button:hover {
            background-color: #45a049;
        }
        .view-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            text-decoration: none;
            color: #2196F3;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Student Registration</h2>

    <% if (request.getAttribute("errorMessage") != null) { %>
        <div class="error-msg">
            <%= request.getAttribute("errorMessage") %>
        </div>
    <% } %>

    <form action="register" method="POST">
        <div class="form-group">
            <label>Full Name</label>
            <input type="text" name="name" placeholder="Enter your name" required>
        </div>

        <div class="form-group">
            <label>Email Address</label>
            <input type="email" name="email" placeholder="email@example.com" required>
        </div>

        <div class="form-group">
            <label>Current Year</label>
            <input type="number" name="year" placeholder="e.g. 2025" required>
        </div>

        <button type="submit">Register Student</button>
    </form>

    <a href="show_all" class="view-link">View Registered Students</a>
</div>

</body>
</html>