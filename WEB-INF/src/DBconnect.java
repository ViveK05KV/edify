package com;
import java.sql.*;
import java.io.*;
public class DBconnect
{
 PreparedStatement ps=null;
 ResultSet rs=null;
 Connection con=null;
 public DBconnect()
{
 try
 {
Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost/edify","root","root");
 }
catch(Exception e)
{  
 System.out.println("error in connection"+e);
}
}
public ResultSet logincheck(String username,String pwd)
{  
  try
   {  
     ps=con.prepareStatement("select *from login where username=? and password=?");
	ps.setString(1,username);
	ps.setString(2,pwd);
System.out.println(ps);
	rs=ps.executeQuery();
	}
	catch(Exception e)
	  { 
	  System.out.println(e);
	  }
	  return rs;
}
}
