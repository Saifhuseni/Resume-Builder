<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generated Resume</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        p {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Generated Resume</h1>
    <p>Name: <%= request.getParameter("name") %></p>
    <p>Email: <%= request.getParameter("email") %></p>
    <p>Phone: <%= request.getParameter("phone") %></p>
    <p>Address: <%= request.getParameter("address") %></p>
    <p>Degree: <%= request.getParameter("degree") %></p>
    <p>University: <%= request.getParameter("university") %></p>
    <p>Education Start Date: <%= request.getParameter("eduStartDate") %></p>
    <p>Education End Date: <%= request.getParameter("eduEndDate") %></p>
    <p>Job Title: <%= request.getParameter("jobTitle") %></p>
    <p>Employer: <%= request.getParameter("employer") %></p>
    <p>Experience Start Date: <%= request.getParameter("expStartDate") %></p>
    <p>Experience End Date: <%= request.getParameter("expEndDate") %></p>
    <p>Responsibilities: <%= request.getParameter("responsibilities") %></p>
    <p>Skills: <%= request.getParameter("skills") %></p>
</div>
</body>
</html>
