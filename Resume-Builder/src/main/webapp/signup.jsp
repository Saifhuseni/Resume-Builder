<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="signupservlet.java"  method="post">
    <label for="username"><b>Name:</b></label>
    <input type="text" placeholder="Please enter your name" name="name" id = "name" required>
    <br><br><br>
    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Please enter Password" name="password" id="password" required>
      <br><br><br>
    <label for="Email"><b>Email</b></label>
    <input type="email" placeholder="Please enter email" name="email" id="email" required>
      <br><br><br>
    <label for="contact"><b>Contact no.</b></label>
    <input type="text" placeholder="Please enter contact" name="contact" id="contact" required>
      <br><br><br>
    <button type="submit">Login</button>
    </form>
</body>
</html>