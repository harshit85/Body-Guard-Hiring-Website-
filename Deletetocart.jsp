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
   		//out.println((String)session.getAttribute("Id"));
   		//out.println(request.getParameter("ur"));
   	s.executeUpdate("delete from cart where customerId="+(String)session.getAttribute("Id")+" and id="+request.getParameter("ur"));

}
  catch(SQLException e)
   {
    out.println(e);
 }
 %>
