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
  if(session.getAttribute("Admin")!=null)
   {
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Digital Agency</title>
    
    <!--Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    
    <!--Bootstrap-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <!--Font Awesome-->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!--Owl Carousel-->
    <link rel="stylesheet" href="vendors/owl.carousel/owl.carousel.css">
    <!--Magnific Popup-->
    <link rel="stylesheet" href="vendors/magnific-popup/magnific-popup.css">
    <!-- RS5.0 Main Stylesheet -->
  <link rel="stylesheet" type="text/css" href="vendors/revolution/css/settings.css">

  <!-- RS5.0 Layers and Navigation Styles -->
  <link rel="stylesheet" type="text/css" href="vendors/revolution/css/layers.css">
  <link rel="stylesheet" type="text/css" href="vendors/revolution/css/navigation.css">  
    
    <!--Theme Styles-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/theme.css">
    
    <!--[if lt IE 9]>        
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

  <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
        <a href="index.jsp" class="navbar-brand"><img src="images/logo1.png" alt=""></a>
        </div>
      <div class="collapse navbar-collapse" id="main_nav">
          <a href="Adminsignout.jsp" class="btn btn-outline blue pull-right hidden-xs hidden-sm">Signout</a>
      </div>
      </div>
    </nav>
<!--Chceckout Form-->
  	<section class="row checkout-content">
  		<div class="container">
  			<div class="row" colspace="6">
  				<div class="col-md-12">
          <%
                    if(request.getParameter("ur").equals("1"))
            {
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
            Statement s=con.createStatement();
           ResultSet rs=s.executeQuery("select *from bodyguard_details");
          %>
  					<table border="1">
  						<tr><td class="col-md-1">Id</td><td class="col-md-1">Name</td><td class="col-md-1">Ctegory</td><td class="col-md-1">Qualification</td><td class="col-md-1">Experience</td><td class="col-md-1">Star</td><td class="col-md-1">Price</td><td class="col-md-1">Image</td></tr>
  						<%
					  while(rs.next())
					   		{
					   		%>
					   <tr><td><%= rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%= rs.getString(4)%></td><td><%= rs.getString(5)%></td><td><%= rs.getString(6)%></td><td><%= rs.getString(7)%></td><td><%= rs.getString(8)%></td></tr>

					   <%
						}
					   	%>
					   		</table>
					   	<%		
					  con.close();
					   }
              }
                 if(request.getParameter("ur").equals("2"))
                  {
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
                  Statement s=con.createStatement();
                 ResultSet rs=s.executeQuery("select *from signup");
                %>
                  <table border="1">
              <tr><td class="col-md-1">Id</td><td class="col-md-1">Name</td><td class="col-md-1">Mobile</td><td class="col-md-1">Email</td><td class="col-md-1">Password</td><td class="col-md-1">City</td><td class="col-md-1">State</td><td class="col-md-1">country</td><td class="col-md-1">Pincode</td><td class="col-md-1">Street</td><td class="col-md-1">Sex</td></tr>
              <%
            while(rs.next())
                {
                %>
             <tr><td><%= rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%= rs.getString(4)%></td><td><%= rs.getString(5)%></td><td><%= rs.getString(6)%></td><td><%= rs.getString(7)%></td><td><%= rs.getString(8)%></td><td><%= rs.getString(9)%></td><td><%= rs.getString(10)%></td><td><%= rs.getString(11)%></td></tr>

             <%
            }
              %>
                </table>
                <%
               }

						}
					  catch(SQLException e)
					   {
					    out.println(e);
					 }
					 %>
  				</div>	
   			</div>
  		</div>
  	</section>
  	
  	<!--Footer-->    
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--Magnific Popup-->
    <script src="vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!--Owl Carousel-->
    <script src="vendors/owl.carousel/owl.carousel.min.js"></script>
    <!--CounterUp-->
    <script src="vendors/couterup/jquery.counterup.min.js"></script>
    <!--WayPoints-->
    <script src="vendors/waypoint/waypoints.min.js"></script>
    <!--Isotope-->
    <script src="vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="vendors/isotope/isotope.min.js"></script>
    <!--Theme Script-->    
    <script src="js/theme.js"></script>
</body>
</html>