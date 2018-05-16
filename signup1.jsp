<%@ page import="java.sql.*" %>
<%
try
{
  Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException e)
{
out.println(e);
}
%>
<%
try{
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
   Statement s=con.createStatement();
   s.executeUpdate("insert into signup values("+null+","+"'"+request.getParameter("username")+"'"+","+"'"+request.getParameter("mobile")+"'"+","+"'"+request.getParameter("email")+"'"+","+"'"+request.getParameter("password")+"'"+","+"'"+request.getParameter("city")+"'"+","+"'"+request.getParameter("state")+"'"+","+"'"+request.getParameter("country")+"'"+","+"'"+request.getParameter("pincode")+"'"+","+"'"+request.getParameter("street")+"'"+","+"'"+request.getParameter("sex")+"'"+")");
   response.sendRedirect("http://localhost:8080/examples/Atul%20site/login.jsp");
  con.close();
}
  catch(SQLException e)
   {
    out.println(e);
 }
 %>
