<%-- 
    Document   : newjsp
    Created on : 28 Aug, 2019, 10:39:41 AM
    Author     : MK's PC
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome <%=session.getAttribute("name")%></title>
</head>
<body>
    <% 
        if(session.getAttribute("name")==null)
        {
            response.sendRedirect("adminLog.jsp");
        }
    response.setHeader("cache-control", "no-cache ,no-store,must-revalidate");
    %>
    <h4>
        Hello,
        <%=session.getAttribute("name")%></h4>
        <form>
            <a href="viewMentor.jsp">View mentors</a>
        </form>
        <form action="logout">
            <input type="submit" value="LogOut">
        </form>
    
</body>
</html>
