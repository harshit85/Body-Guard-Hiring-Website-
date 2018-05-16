<%@ page import="java.sql.*" %>
<%
String s1=request.getParameter("ur");
String s4=(String)session.getAttribute( "Id" ); 
try{
	Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException e)
{
out.println(e);
}
try{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select *from bodyguard_details where id="+"'"+s1+"'");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
	Statement s2=c.createStatement();
	ResultSet r=s2.executeQuery("select *from signup where id="+"'"+s4+"'");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
	Statement s3=conn.createStatement();
	while(rs.next())
	{	
	r.next();
		s3.executeUpdate("insert into cart values("+r.getString(1)+","+"'"+r.getString(2)+"'"+","+rs.getString(1)+","+"'"+rs.getString(2)+"')");
		%>
		<font color="red">succesfully added</font>
		<%
	}

	con.close();
}
catch(SQLException e)
{
out.println(e);
}
%>