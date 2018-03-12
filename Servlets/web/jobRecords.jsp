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
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="cache-control" content="no-cache, no-store, must-revalidate">
    <link rel='stylesheet' href='employee.css' type='text/css' />
    <title>JobRecords</title>
</head>
<body>
<div class="rightButton">
    <a href="/registration.jsp" class="button -fill -blue">Add Employee</a>
    <jsp:include page="logout.jsp" />
</div>
<div class="employeeRecords">
    <h3>Hello, <%= session.getAttribute( "user" ) %>
    </h3>
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
