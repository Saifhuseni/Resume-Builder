<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume Output</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        p {
            margin-bottom: 10px;
        }

        strong {
            font-weight: bold;
        }
     .centered-text {
            text-align: center;
           
        }
       
    </style>
</head>
<body>
<div class="container">
    <h1>Resume Output</h1>
    <%
        // Extract form data from request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String[] socialLinks = request.getParameterValues("socialLink");
        String[] degrees = request.getParameterValues("degree");
        String[] universities = request.getParameterValues("university");
        String[] eduStartDates = request.getParameterValues("eduStartDate");
        String[] eduEndDates = request.getParameterValues("eduEndDate");
        String[] jobTitles = request.getParameterValues("jobTitle");
        String[] employers = request.getParameterValues("employer");
        String[] expStartDates = request.getParameterValues("expStartDate");
        String[] expEndDates = request.getParameterValues("expEndDate");
        String[] responsibilities = request.getParameterValues("responsibilities");
        String skills = request.getParameter("skills");

        // Display the extracted data if not empty
    %>
   <div class="centered-text">
        <% if (name != null && !name.isEmpty()) { %>
            <p ><strong><%= name %></strong></p>
        <% } %>
        <% if (email != null && !email.isEmpty()) { %>
            <p><%= email %></p>
        <% } %>
        <% if (phone != null && !phone.isEmpty()) { %>
            <p><%= phone %></p>
        <% } %>
        <% if (address != null && !address.isEmpty()) { %>
            <p><%= address %></p>
        <% } %>
    </div>


       <%  if (socialLinks != null && socialLinks.length > 0 && socialLinks[0].trim().length() > 0) {
            out.println("<h2>Social Links</h2>");
            for (String link : socialLinks) {
                if (link.trim().length() > 0) {
                    out.println("<p>" + link + "</p>");
                }
            }
        }

        if (degrees != null && degrees.length > 0 && degrees[0].trim().length() > 0) {
            out.println("<h2>Education</h2>");
            for (int i = 0; i < degrees.length; i++) {
                if (degrees[i].trim().length() > 0) {
                    out.println("<p><strong> " + degrees[i] + "</strong></p>");
                    if (universities != null && universities.length > i && universities[i].trim().length() > 0) {
                        out.println("<p> " + universities[i] + "</p>");
                    }
                    if (eduStartDates != null && eduStartDates.length > i && eduStartDates[i].trim().length() > 0) {
                        out.println("<p> " + eduStartDates[i]);
                        if (eduEndDates != null && eduEndDates.length > i && eduEndDates[i].trim().length() > 0) {
                            out.println(" - " + eduEndDates[i] + "</p>");
                            // Calculate the difference between start and end dates
                            java.time.LocalDate startDate = java.time.LocalDate.parse(eduStartDates[i]);
                            java.time.LocalDate endDate = java.time.LocalDate.parse(eduEndDates[i]);
                            java.time.Period period = java.time.Period.between(startDate, endDate);
                            out.println("<p>Duration: " + period.getYears() + " years, " + period.getMonths() + " months, " + period.getDays() + " days</p>");
                        } else {
                            out.println(" - Till Date</p>");
                            java.time.LocalDate startDate = java.time.LocalDate.parse(eduStartDates[i]);
                            java.time.Period period = java.time.Period.between(startDate, java.time.LocalDate.now());
                            out.println("<p>Duration: " + period.getYears() + " years, " + period.getMonths() + " months, " + period.getDays() + " days</p>");
                        }
                    }
                }
            }
        }

        if (jobTitles != null && jobTitles.length > 0 && jobTitles[0].trim().length() > 0) {
            out.println("<h2>Experience</h2>");
            for (int i = 0; i < jobTitles.length; i++) {
                if (jobTitles[i].trim().length() > 0) {
                    out.println("<p><strong> " + jobTitles[i] + "</strong></p>");
                    if (employers != null && employers.length > i && employers[i].trim().length() > 0) {
                        out.println("<p>Employer: " + employers[i] + "</p>");
                    }
                    if (expStartDates != null && expStartDates.length > i && expStartDates[i].trim().length() > 0) {
                        out.println("<p> " + expStartDates[i]);
                        if (expEndDates != null && expEndDates.length > i && expEndDates[i].trim().length() > 0) {
                            out.println(" - " + expEndDates[i] + "</p>");
                            // Calculate the difference between start and end dates
                            java.time.LocalDate startDate = java.time.LocalDate.parse(expStartDates[i]);
                            java.time.LocalDate endDate = java.time.LocalDate.parse(expEndDates[i]);
                            java.time.Period period = java.time.Period.between(startDate, endDate);
                            out.println("<p>Duration: " + period.getYears() + " years, " + period.getMonths() + " months, " + period.getDays() + " days</p>");
                        } else {
                            out.println(" - Till Date</p>");
                            java.time.LocalDate startDate = java.time.LocalDate.parse(expStartDates[i]);
                            java.time.Period period = java.time.Period.between(startDate, java.time.LocalDate.now());
                            out.println("<p>Duration: " + period.getYears() + " years, " + period.getMonths() + " months, " + period.getDays() + " days</p>");
                        }
                    }
                    if (responsibilities != null && responsibilities.length > i && responsibilities[i].trim().length() > 0) {
                        out.println("<p>" + responsibilities[i] + "</p>");
                    }
                }
            }
        }

        if (skills != null && !skills.isEmpty()) {
            out.println("<h2>Skills</h2>");
            out.println("<p>" + skills + "</p>");
        }
    %>
</div>
</body>
</html>
