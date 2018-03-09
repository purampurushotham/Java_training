<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: purushotham
  Date: 3/8/2018
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="US-ASCII">
  <title>Login Page</title>
</head>
<body>
<form action="LoginServlet" method="post">

  Username: <input type="text" name="user">
  <br>
  Password: <input type="password" name="password">
  <br>
  <input type="submit" value="Login" class="-fill -blue">
</form>
</body>
</html>