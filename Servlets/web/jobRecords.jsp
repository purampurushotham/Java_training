<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: purushotham
  Date: 3/8/2018
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel='stylesheet' href='employee.css' type='text/css' />
    <title>Title</title>
</head>
<body>
<div class="rightButton">
    <a href="registration.jsp" class="button -fill -blue">Add Employee</a>
    <a class="button -fill -blue greyedOut" id="btn-delete">Delete Selected</a>
</div>
<div class="employeeRecords">
<table>
    <tr>
    <td>ID</td>
    <td>Job-Number</td>
    <td>Date</td>
    <td>Department</td>
    <td>Division</td>
    <td>Region</td>
    <td>Job Name</td>
    <td>Status</td>
    </tr>
       <% try{
           List jobData = (List) request.getAttribute("jobData");
            Iterator itr;
        for (itr=jobData.iterator(); itr.hasNext(); ){
    %>
    <tr>
        <td><%=itr.next()%></td>
        <td><%=itr.next()%></td>
        <td><%=itr.next()%></td>
        <td><%=itr.next()%></td>
        <td><%=itr.next()%></td>
        <td><%=itr.next()%></td>
        <td><%=itr.next()%></td>
        <td><%=itr.next()%></td>
    </tr>
    <%}
    }catch (Exception e){
           System.out.print("Exceptiuon in jsp"+e);
    }
    %>
</table>
</div>
</body>
</html>
