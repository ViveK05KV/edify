<jsp:useBean id="obj" class="com.DBconnect"/>
<%@page import="java.sql.* "%>
<%
session.setAttribute("lid",null);
response.sendRedirect("../index.html");
%>