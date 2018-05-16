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
   if(Integer.parseInt(request.getParameter("ur"))==1)
   {
   	s.executeUpdate("insert into bodyguard_details values("+null+","+"'"+request.getParameter("name")+"'"+","+"'"+request.getParameter("category")+"'"+","+"'"+request.getParameter("qualification")+"'"+","+"'"+request.getParameter("experience")+"'"+","+"'"+request.getParameter("star")+"'"+","+request.getParameter("price")+","+"'"+request.getParameter("image")+"'"+")");
   response.sendRedirect("http://localhost:8080/examples/Atul%20site/AdminPanel.jsp");
   }  
   if(Integer.parseInt(request.getParameter("ur"))==2)
   {
   		s.executeUpdate("delete from bodyguard_details where image='"+request.getParameter("image")+"'");
 	    response.sendRedirect("http://localhost:8080/examples/Atul%20site/AdminPanel.jsp");
   }
   if(Integer.parseInt(request.getParameter("ur"))==3)
   {
      s.executeUpdate("delete from signup where email='"+request.getParameter("email")+"'");
      response.sendRedirect("http://localhost:8080/examples/Atul%20site/AdminPanel.jsp");
   }
  con.close();
}
  catch(SQLException e)
   {
    out.println(e);
 }
 %>
