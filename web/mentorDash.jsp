<%-- 
    Chinmaya Mishra
    Mentor Dashboard page
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
            response.sendRedirect("mentorLog.jsp");
        }
    response.setHeader("cache-control", "no-cache ,no-store,must-revalidate");
    %>
    <h4>
        Hello,
        <%=session.getAttribute("name")%></h4>
        <form action="logout">
            <input type="submit" value="LogOut">
        </form>
    
</body>
</html>
