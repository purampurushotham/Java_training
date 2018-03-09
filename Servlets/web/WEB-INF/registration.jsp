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
    <title>Title</title>
</head>
<body>
<td>Job-Number</td>
<td>Date</td>
<td>Department</td>
<td>Division</td>
<td>Region</td>
<td>Job Name</td>
<td>Status</td>
<form name='registration' onsubmit="return false">
    <ul>
        <li><label for="jobno">Job Number:</label></li>
        <li><input type="text" name="fname" size="12" />
            <span class="val_error" id="fname_error"></span>
        </li>
        <li><label for="doj">Date:</label></li>
        <li><input type="text" name="doj" size="12" /></li>
        <li><label for="lname">Department:</label></li>
        <li><input type="text" name="lname" size=10 />
            <span class="val_error" id="lname_error"></span>
        </li>
        <li><label for="email">Division:</label></li>
        <li><input type="text" name="email" size="50" onkeyup="checkemail()" />
            <span class="val_error" id="email_error"></span>
        </li>
        <li><label id="mob">Region:</label></li>
        <li><input type="text" name="mob" size="50" />
            <span class="val_error" id="mob_error"></span>
        </li>
        <li><label id="status">Status:</label></li>
        <li><input type="text" name="status" size="50" /></li>
        <li><label id="dept">Department:</label></li>
        <li><select name="dept">
            <option value="">(Please select a department)</option>
            <option value="Admin">Admin</option>
            <option value="Testing">Testing</option>
            <option value="Developement">Developement</option>
            <option value="HR">HR</option>
            <option value="Sales">Sales</option>
        </select></li>
        <li>
            <input type="submit" value="ADD"class="left button" onclick="formValidation()" />,
            <input type="button" id="cancelBtn" class="rigth button" value="CANCEL" onclick="cancelForm()" />
        </li>
    </ul>
</form>

</body>
</html>
