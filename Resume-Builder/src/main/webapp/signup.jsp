<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Resume Maker</title>
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

    fieldset {
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    legend {
        font-weight: bold;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    textarea,
    select {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    button:hover {
        background-color: #0056b3;
    }

    #resumeOutput {
        margin-top: 20px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        display: none;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Resume Maker</h1>
    <form id="resumeForm" action="generateResume.jsp" method="post">
       <fieldset>
            <legend>Personal Information</legend>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>
            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required><br><br>
            <label for="address">Address:</label>
            <input type="text" id="address" name="address">
        </fieldset>
        <fieldset>
            <legend>Education</legend>
            <label for="degree">Degree:</label>
            <input type="text" id="degree" name="degree"><br><br>
            <label for="university">University:</label>
            <input type="text" id="university" name="university"><br><br>
            <label for="eduStartDate">Start Date:</label>
            <input type="date" id="eduStartDate" name="eduStartDate"><br><br>
            <label for="eduEndDate">End Date:</label>
            <input type="date" id="eduEndDate" name="eduEndDate">
        </fieldset>
        <fieldset>
            <legend>Experience</legend>
            <label for="jobTitle">Job Title:</label>
            <input type="text" id="jobTitle" name="jobTitle"><br><br>
            <label for="employer">Employer:</label>
            <input type="text" id="employer" name="employer"><br><br>
            <label for="expStartDate">Start Date:</label>
            <input type="date" id="expStartDate" name="expStartDate"><br><br>
            <label for="expEndDate">End Date:</label>
            <input type="date" id="expEndDate" name="expEndDate"><br><br>
            <label for="responsibilities">Responsibilities:</label><br>
            <textarea id="responsibilities" name="responsibilities" rows="4"></textarea>
        </fieldset>
        <fieldset>
            <legend>Skills</legend>
            <label for="skills">Skills:</label><br>
            <textarea id="skills" name="skills" rows="4"></textarea>
        </fieldset>
        <button type="submit">Generate Resume</button>
    </form>
    <div id="resumeOutput"></div>
</div>
</body>
</html>
