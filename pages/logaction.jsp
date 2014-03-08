<jsp:useBean id="obj" class="com.DBconnect"/>
<%@page import="java.sql.* "%>
<%
String s=request.getParameter("user");
String pwd=request.getParameter("pass");
ResultSet rs=obj.logincheck(s,pwd);
if(rs.next())
 {
	 if(rs.getString(4).equals("administrator"))
	   { 
		   response.sendRedirect("admin.html");
	   }
	 else if(rs.getString(4).equals("staff")) 
	   {  
		   if(rs.getString(5).equals("approved")) 
		      {   
				  response.sendRedirect("staff.html");
			  }
		}
	 else if(rs.getString(4).equals("student"))
	   { 
		   if(rs.getString(5).equals("approved"))
		     {
				 response.sendRedirect("student.html");
			 }
	   }
	 else if(rs.getString(4).equals("teacher"))
	  {
		   if(rs.getString(5).equals("approved"))
		     { 
				response.sendRedirect("teacher.html");
			 }
	  }
	 else
	  {
		  response.sendRedirect("error.html");
	  }
 }
else
 {
	 response.sendRedirect("error.html");
 }
%>	   
	 

