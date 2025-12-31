<%@ page import="java.util.List" %>
<%@ page import="com.student.model.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registered Students List</title>
    <style>
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .table-container {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 800px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }

        th {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            text-align: left;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 0.03em;
        }

        td {
            padding: 12px 15px;
            border-bottom: 1px solid #eee;
            color: #555;
            font-size: 14px;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        tr:last-child td {
            border-bottom: none;
        }

        .no-data {
            text-align: center;
            padding: 20px;
            color: #888;
            font-style: italic;
        }

        .btn-back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #2196F3;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            transition: background 0.3s;
        }

        .btn-back:hover {
            background-color: #1976D2;
        }
    </style>
</head>
<body>

<div class="table-container">
    <h2>Registered Students</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Year</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Using standard Java loop to avoid JSTL dependency errors
                List<Student> students = (List<Student>) request.getAttribute("students");
                if (students != null && !students.isEmpty()) {
                    for (Student s : students) {
            %>
            <tr>
                <td><strong>#<%= s.getId() %></strong></td>
                <td><%= s.getName() %></td>
                <td><%= s.getEmail() %></td>
                <td><%= s.getYear() %></td>
            </tr>
            <% 
                    }
                } else { 
            %>
            <tr>
                <td colspan="4" class="no-data">No students registered yet.</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<a href="index.jsp" class="btn-back">← Register Another Student</a>

</body>
</html>