
<%@page import="com.dao.LoginDao1"%>
<%@page import="com.dao.LoginDao"%>
<%@page import="org.apache.catalina.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Users List</h1>
<%
List<LoginDao1> list=mentorLog.LoginDao1();
request.setAttribute("list",list);
%>
<table border="1" width="90%">
<tr><th>Name</th><th>Password</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getName()}</td><td>${u.getPassword()}</td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a>
    </body>
</html>
