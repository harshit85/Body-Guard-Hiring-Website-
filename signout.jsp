<%
	session.removeAttribute("Name");
	session.removeAttribute("Id");
	response.sendRedirect("http://localhost:8080/examples/Atul%20site/index.jsp");
%>