<%--
  Created by IntelliJ IDEA.
  User: purushotham
  Date: 3/9/2018
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="cache-control" content="no-cache, no-store, must-revalidate">
    <title>Job Registration</title>
    <link rel='stylesheet' href='employee.css' type='text/css' />
</head>
<body>
<H2 class="title" >Job Registration</H2>
<div class="rightButton">
    <jsp:include page="logout.jsp" />
</div>
<form name='registration' action = "${pageContext.request.contextPath}/addEmployee" method = "POST">
    <ul>
        <li><label for="jobno">Job Number:</label></li>
        <li><input type="text" name="jobno"/>
            <span class="val_error" id="fname_error"></span>
        </li>
        <li><label for="doj">Date:</label></li>
        <li><input type="Date" name="doj" /></li>
        <li><label for="dept">Department:</label></li>
        <li><input type="text" name="dept"/>
            <span class="val_error" id="lname_error"></span>
        </li>
        <li><label for="division">Division:</label></li>
        <li><input type="text" name="division" />
        </li>
        <li><label for="region">Region:</label></li>
        <li><input type="text" name="region"/>
            <span class="val_error" id="mob_error"></span>
        </li>
        <li><label id="status">Status:</label></li>
        <li><input type="text" name="status"/></li>
        <li><label for="jobname">Job Name:</label></li>
        <li><input type="text" name="jobname"/></li>
        <li>
            <input type="submit" value="ADD"class="left button -fill -blue"/>
            <a href="/jobRecords" id="cancelBtn" class="right button">Cancel</a>
        </li>
    </ul>
</form>

</body>
</html>
