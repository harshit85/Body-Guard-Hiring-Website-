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
	String s1=request.getParameter("email");
	String s3=request.getParameter("password");
	String s2,s4=null,s5;
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
   Statement s=con.createStatement();
   ResultSet rs=s.executeQuery("select *from signup where email='"+s1+"'"+"and "+"password='"+s3+"'");
   while(rs.next())
   {
      s5=rs.getString(1);
   		s2=rs.getString(2);
   		s4=rs.getString(4);
   		session.setAttribute( "Name",s2);
   		session.setAttribute( "Id",s5);
   }
   if(s1.equals(s4))
   {
   	 response.sendRedirect("http://localhost:8080/examples/Atul%20site/services.jsp"); 
   }
   else
   {
   		response.sendRedirect("http://localhost:8080/examples/Atul%20site/error.jsp"); 
   }
  con.close();
}
  catch(SQLException e)
   {
    out.println(e);
 }
 %>
