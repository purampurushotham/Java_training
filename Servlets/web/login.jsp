<%--
  Created by IntelliJ IDEA.
  User: purushotham
  Date: 3/9/2018
  Time: 5:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="US-ASCII">
    <title>Login Page</title>
    <link rel='stylesheet' href='employee.css' type='text/css' />
</head>
<body>
<h2 class="title">Login</h2>
<form action="LoginServlet" method="POST">
    <ul>
        <li><label for="username">User Name:</label></li>
        <li><input type="text" name="user"/></li>
        <li><label for="password">Job Number:</label></li>
        <li><input type="password" name="password"/></li>
        <li>
            <input type="submit" value="Login" class="-fill -blue button">
        </li>
    </ul>
</form>
</body>
</html>