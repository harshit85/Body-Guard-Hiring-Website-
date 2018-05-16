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
	String s1=request.getParameter("email");
	String s2=request.getParameter("password");
	 if(s1.equals("AtulGupta") && s2.equals("@tulGupt@"))
    {
        session.setAttribute("Admin",s1);
        response.sendRedirect("http://localhost:8080/examples/Atul%20site/AdminPanel.jsp");
    }
    else
    {
      response.sendRedirect("http://localhost:8080/examples/Atul%20site/WelcomeAdmin.jsp");
    }
 %>
