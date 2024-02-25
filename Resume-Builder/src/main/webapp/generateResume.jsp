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
        .resumebody{
        background-color: #ffff99;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 2px 4px 2px 4px  rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1 {
            text-align: center;
        }
        
        h2 {
        margin-top: 10px;
            margin-bottom: 5px;
        }

        p {
        margin-top: 5px;
            
        }
        

        strong {
            font-weight: bold;
        }
     .pd {
          
           margin-bottom: -30px;
        }
        ::selection {
  color: #33ccff;
  
}
       
    </style>
</head>
<body><h1>Resume Output</h1>
<div class="resumebody">
<h2>________________________________________________________________________________________________________</h2>

<br>

<div class="container">
    
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
        String resumeBodyColor = request.getParameter("resumebody-color");
        String containerColor = request.getParameter("container-color");
        

        // Display the extracted data if not empty
    %>
   <div class="pd">
        <% if (name != null && !name.isEmpty()) { %>
            <p class="q1"><strong><%= name %></strong></p>
        <% } %>
        <% if (email != null && !email.isEmpty()) { %>
            <p class="q1"><%= email %></p>
        <% } %>
        <% if (phone != null && !phone.isEmpty()) { %>
            <p class="q1"><%= phone %></p>
        <% } %>
        <% if (address != null && !address.isEmpty()) { %>
            <p class="q1"><%= address %></p>
        <% } %>
    </div>

   <div class="pd">
 <%
if (degrees != null && degrees.length > 0 && degrees[0].trim().length() > 0) {
    out.println("<h2>_____________________________________________________________</h2>");
    out.println("<h2 class='editable-heading education-heading'>Education</h2>");
    for (int i = 0; i < degrees.length; i++) {
        if (degrees[i].trim().length() > 0) {
            out.println("<div style='margin-bottom: 30px;'>");
            out.println("<p><strong> " + degrees[i] + "</strong></p>");
            if (universities != null && universities.length > i && universities[i].trim().length() > 0) {
                out.println("<p> " + universities[i] + "</p>");
            }
            if (eduStartDates != null && eduStartDates.length > i && eduStartDates[i].trim().length() > 0) {
                out.println("<p style='font-size: 14px;'>" + eduStartDates[i]);
                if (eduEndDates != null && eduEndDates.length > i && eduEndDates[i].trim().length() > 0) {
                    out.println(" - " + eduEndDates[i] + "</p>");
                    
                    java.time.LocalDate startDate = java.time.LocalDate.parse(eduStartDates[i]);
                    java.time.LocalDate endDate = java.time.LocalDate.parse(eduEndDates[i]);
                    java.time.Period period = java.time.Period.between(startDate, endDate);
                    out.println("<p style='font-size: 14px;'>" + period.getYears() + " yrs, " + period.getMonths() + " mon, " + period.getDays() + " days</p>");
                } else {
                    out.println(" - Till Date</p>");
                    java.time.LocalDate startDate = java.time.LocalDate.parse(eduStartDates[i]);
                    java.time.Period period = java.time.Period.between(startDate, java.time.LocalDate.now());
                    out.println("<p style='font-size: 14px;'>" + period.getYears() + " yrs, " + period.getMonths() + " mon, " + period.getDays() + " days</p>");
                }
            }
            out.println("</div>"); 
        }
    }
}
%>

  <div class="pd">
<%
if (jobTitles != null && jobTitles.length > 0 && jobTitles[0].trim().length() > 0) {
    out.println("<h2>_____________________________________________________________</h2>");
    out.println("<h2 class='editable-heading experience-heading'>Experience</h2>");
    for (int i = 0; i < jobTitles.length; i++) {
        if (jobTitles[i].trim().length() > 0) {
            out.println("<div style='margin-bottom: 30px;'>"); 
            out.println("<p><strong> " + jobTitles[i] + "</strong></p>");
            if (employers != null && employers.length > i && employers[i].trim().length() > 0) {
                out.println("<p>Employer: " + employers[i] + "</p>");
            }
            if (expStartDates != null && expStartDates.length > i && expStartDates[i].trim().length() > 0) {
                out.println("<p style='font-size: 14px;'> " + expStartDates[i]);
                if (expEndDates != null && expEndDates.length > i && expEndDates[i].trim().length() > 0) {
                    out.println(" - " + expEndDates[i] + "</p>");
                  
                    java.time.LocalDate startDate = java.time.LocalDate.parse(expStartDates[i]);
                    java.time.LocalDate endDate = java.time.LocalDate.parse(expEndDates[i]);
                    java.time.Period period = java.time.Period.between(startDate, endDate);
                    out.println("<p style='font-size: 14px;'>" + period.getYears() + " yrs, " + period.getMonths() + " mon, " + period.getDays() + " days</p>");
                } else {
                    out.println(" - Till Date</p>");
                    java.time.LocalDate startDate = java.time.LocalDate.parse(expStartDates[i]);
                    java.time.Period period = java.time.Period.between(startDate, java.time.LocalDate.now());
                    out.println("<p style='font-size: 14px;'>" + period.getYears() + " yrs, " + period.getMonths() + " mon, " + period.getDays() + " days</p>");
                }
            }
            if (responsibilities != null && responsibilities.length > i && responsibilities[i].trim().length() > 0) {
                out.println("<p>" + responsibilities[i] + "</p>");
            }
            out.println("</div>"); 
        }
    }
}
%>
</div>

  <div class="pd">
<% 
if (skills != null && !skills.isEmpty()) {
    out.println("<h2>_____________________________________________________________</h2>");
    out.println("<h2 class='editable-heading skills-heading'>Skills</h2>");
    out.println("<p>" + skills.replaceAll("\n", "<br>") + "</p>"); // Use replaceAll to replace newline characters with <br> tags
}
%>
</div>

        
                   <div class="pd">
            <% if (socialLinks != null && socialLinks.length > 0 && socialLinks[0].trim().length() > 0) { %>
             <h2>_____________________________________________________________</h2>
                <h2 class='editable-heading social-links-heading'>Social Links</h2>
                <% for (String link : socialLinks) { %>
                    <% if (link.trim().length() > 0) { %>
                        <p><a href="<%= link %>"><%= link %></a></p>
                    <% } %>
                <% } %>
            <% } %>
        </div>
        
        
           
</div>
</div>

<h2>________________________________________________________________________________________________________</h2>
</div>
<div class="customize">
    <h2>Customize Background</h2>
    <form method="post" action="">
        <label for="bodyColor">Body Background Color:</label>
        <input type="color" id="bodyColor" name="bodyColor">
        <label for="containerColor">Container Background Color:</label>
        <input type="color" id="containerColor" name="containerColor">
        <input type="submit" value="Apply">
    </form>
</div>

<script>
    document.querySelector('.customize form').addEventListener('submit', function(e) {
        e.preventDefault();
        const bodyColor = document.getElementById('bodyColor').value;
        const containerColor = document.getElementById('containerColor').value;
        document.querySelector('.resumebody').style.backgroundColor = bodyColor;
        document.querySelector('.container').style.backgroundColor = containerColor;
    });
</script>


<div class="customize-font">
    <h2>Customize Font</h2>
    <label for="headingFont">Heading Font:</label>
    <select id="headingFont">
        <option value="Arial, sans-serif">Arial</option>
<option value="Verdana, sans-serif">Verdana</option>
<option value="Helvetica, sans-serif">Helvetica</option>
<option value="Times New Roman, serif">Times New Roman</option>
<option value="Georgia, serif">Georgia</option>
<option value="Palatino Linotype, serif">Palatino Linotype</option>
<option value="Book Antiqua, serif">Book Antiqua</option>
<option value="Lucida Sans Unicode, sans-serif">Lucida Sans Unicode</option>
<option value="Tahoma, sans-serif">Tahoma</option>
<option value="Trebuchet MS, sans-serif">Trebuchet MS</option>
<option value="Arial Black, sans-serif">Arial Black</option>
<option value="Impact, sans-serif">Impact</option>
<option value="Comic Sans MS, cursive">Comic Sans MS</option>
<option value="Courier New, monospace">Courier New</option>
<option value="Lucida Console, monospace">Lucida Console</option>

    </select>
    <label for="headingFontSize">Heading Font Size:</label>
    <input type="range" id="headingFontSize" min="10" max="50" step="1" value="16">

    <label for="dataFont">Data Font:</label>
    <select id="dataFont">
       <option value="Arial, sans-serif">Arial</option>
<option value="Verdana, sans-serif">Verdana</option>
<option value="Helvetica, sans-serif">Helvetica</option>
<option value="Times New Roman, serif">Times New Roman</option>
<option value="Georgia, serif">Georgia</option>
<option value="Palatino Linotype, serif">Palatino Linotype</option>
<option value="Book Antiqua, serif">Book Antiqua</option>
<option value="Lucida Sans Unicode, sans-serif">Lucida Sans Unicode</option>
<option value="Tahoma, sans-serif">Tahoma</option>
<option value="Trebuchet MS, sans-serif">Trebuchet MS</option>
<option value="Arial Black, sans-serif">Arial Black</option>
<option value="Impact, sans-serif">Impact</option>
<option value="Comic Sans MS, cursive">Comic Sans MS</option>
<option value="Courier New, monospace">Courier New</option>
<option value="Lucida Console, monospace">Lucida Console</option>

        
        
    </select>
    <label for="dataFontSize">Data Font Size:</label>
    <input type="range" id="dataFontSize" min="10" max="30" step="1" value="14">
</div>

<script>
document.getElementById('headingFont').addEventListener('change', function() {
    const selectedFont = this.value;
    const headings = document.querySelectorAll('.education-heading, .skills-heading, .experience-heading, .social-links-heading');
    headings.forEach(heading => {
        heading.style.fontFamily = selectedFont;
    });
});


document.getElementById('headingFontSize').addEventListener('input', function() {
    const newSize = this.value + 'px';
    const headings = document.querySelectorAll('.education-heading, .skills-heading, .experience-heading,');
    headings.forEach(heading => {
        heading.style.fontSize = newSize;
    });
});

    document.getElementById('dataFont').addEventListener('change', function() {
        const selectedFont = this.value;
        const data = document.querySelectorAll('.resumebody p, .resumebody li, .resumebody span');
        data.forEach(datum => {
            datum.style.fontFamily = selectedFont;
        });
    });

    document.getElementById('headingFontSize').addEventListener('input', function() {
        const newSize = this.value + 'px';
        const headings = document.querySelectorAll('.education-heading, .skills-heading, .experience-heading, .social-links-heading');
        headings.forEach(heading => {
            heading.style.fontSize = newSize;
        });
    });
</script>

</body>
</html>
