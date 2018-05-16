<%
  if(session.getAttribute( "Name" )!=null)
            {
%>
<!DOCTYPE html>
<html lang="en">
<head>
<script language = "javascript">
        var XMLHttpRequestObject =false;

        if (window.XMLHttpRequest)
        {
            XMLHttpRequestObject=new XMLHttpRequest() ;
        }
        else if (window.ActiveXObject)
        {
            XMLHttpRequestObject = new
              ActiveXObject("Microsoft.XMLHTTP");
        }

        function getData(dataSource, divID)
        {
            if (XMLHttpRequestObject)
            {
                var obj = document.getElementById(divID);
                XMLHttpRequestObject.open("GET",dataSource);
                XMLHttpRequestObject.onreadystatechange = function ()
                {
                        obj.innerHTML = XMLHttpRequestObject.responseText;
                }
                XMLHttpRequestObject.send(null);
            }
        }
       
</script> 


    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>BlackvalkIndia Security Service</title>
    
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
  
  <!--Header-->
    <header class="top-bar row">
      <div class="container">
        <div class="welcome-message">Welcome to Online Bodyguard Booking Site</div>
        <ul class="nav top-nav">
          <li class="email"><a href="mailto:info@yoursite.com"><i class="fa fa-envelope-o"></i>info@yoursite.com</a></li>
          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
          <li class="tel"><a href="#"><i class="fa fa-phone"></i>1 (234) 567-8901</a></li>
        </ul>
      </div>
    </header>
    <!--Navigation-->
    <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main_nav" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a href="index.jsp" class="navbar-brand"><img src="images/logo1.png" alt=""></a>
        </div>
      <div class="collapse navbar-collapse" id="main_nav">
        <%
        if(session.getAttribute( "Name" )!=null)
        {
        %>
          <a href="signout.jsp" class="btn btn-outline blue pull-right hidden-xs hidden-sm">Signout</a>
          <a href="cart.jsp" class="btn btn-outline blue pull-right hidden-xs hidden-sm">Cart</a>
           <a href="#" class="btn btn-outline blue pull-right hidden-xs hidden-sm"><%= session.getAttribute( "Name")%></a>
        <%
        }
        %>
        <ul class="nav navbar-nav navbar-right">  
          <li><a href="index.jsp">Home</a></li>
           <%
            if(session.getAttribute( "Name" )!=null)
            {
            %>
            <li><a href="services.jsp">Services</a></li>
            %>
            <% } %>
          <li><a href="about.jsp">About</a></li>
          <li><a href="contact.jsp">contact</a></li>
        </ul>
      </div>
      </div>
    </nav>
  	<!--Shop Content-->
  	<section class="row">
  		<div class="container">
  			<div class="row">
  				<div class="col-md-3 col-md-push-9 shop-sidebar">
  					<!--Widget-->
  					<div class="widget widget-product-search row">
  						<h4 class="widget-title">Search</h4>
  						<form action="#" class="input-group product-search">
  							<input type="text" class="form-control" placeholder="Type your keyword">
  							<span class="input-group-addon"><button type="submit"><i class="fa fa-search"></i></button></span>
  						</form>
  					</div>
  					<!--Widget-->                    
                    <div class="row widget widget-price-filter">
                        <div class="price-filter-inner row m0">
                            <h4 class="widget-title">Filter by Price</h4>
                            <form action="http://localhost:8080/examples/Atul%20site/services1.jsp" class="price-range">
                                <div class="slider-range"></div>
								<div class="row price-bar">
									Price Range: <input type="text" name="range1"><br>
                              <div style="margin: 10px 0 0 70px">
                               to <input type="text" name="range2">
                              </div>  
								</div>
                               	<input type="submit" value="Filter" class="btn btn-default btn-sm">
                            </form>                            
                        </div>
                    </div> 				
  				</div>
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
                <div class="col-md-9 col-md-pull-3 shop-content">
                  <%= request.getParameter("range1")%>
                  <%= request.getParameter("range2")%>
              <%
              try{
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project_bodyguard","root","");
                 Statement s=con.createStatement();
                 ResultSet rs=s.executeQuery("select *from bodyguard_details where price between "+request.getParameter("range1")+" and "+request.getParameter("range2"));
                 int count=0;
                 while(rs.next())
                 {
                    if(count%3==0)
                      {
                %>
                        <div class="row">
                <%
                      }
                %>
                <div class="col-sm-4 product">
                <div class="img-holder row">
                  <img src="<%= rs.getString(8)%>" alt="" class="product-img" height="299" width="263">
                  <div class="hover-box">
                   <div class="btn-holder"><div class="row m0"><a href="#" class="btn btn-outline blue" onclick="getData('Addtocart.jsp?ur=<%= rs.getString(1)%>','thumb<%= count%>')">Add to Cart</a></div></div>
                  </div>
                </div>
                <a href="single-product.html"><h4 class="pro-title"><%= rs.getString(2)%></h4></a>
                <p class="pro-about">Category- <%= rs.getString(3)%></p>
                <p class="pro-about">Qualification- <%= rs.getString(4)%></p>
                <p class="pro-about">Experience- <%= rs.getString(5)%></p>
                <%
                  int i=Integer.parseInt(rs.getString(6));
                  int j=0;
                  %>
                    <div class="row m0 proRating">
                  <%
                    while(i>0)
                    {
                  %>
                     <i class="fa fa-star starred"></i>
                  <%
                      j++;
                      i--;
                    }
                      while (5-j>0)
                        {
                  %>
                    <i class="fa fa-star"></i>
                  <%
                          j++;
                        }
                %>
                </div>
                <h3 class="price">Rs-<%= rs.getString(7)%></h3>
                  <div id="thumb<%= count%>">
                    <p align = "justify"></p> 
                  </div>
              </div>
                <% 
                count++;
                if(count%3==0)
                  {
                    %></div><%
                  }
                 }
               }
                catch(SQLException e)
                 {
                  out.println(e);
                 }
               %>
  					</div>
  					<ul class="pagination">
  						<li class="active"><a href="#">1</a></li>
  						<li><a href="#">2</a></li>
  						<li><a href="#">3</a></li>
  						<li><a href="#">4</a></li>
  					</ul>
  				</div>
  			</div>
  		</div>
  	</section>
  	
  	<!--Footer-->
    <footer class="row site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-7 col-md-push-5 half-side">
            <div class="footer-contact row footer-widget right-box">
              <h3 class="footer-title">Contact Us</h3>
              <ul class="nav">
                <li class="tel"><a href="#"><i class="fa fa-phone"></i>0 (877) 123-4567</a></li>
                <li class="email"><a href="mailto:info@yoursite.com"><i class="fa fa-envelope-o"></i>info@yoursite.com</a></li>
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-5 col-md-pull-7 half-side">
            <div class="footer-about left-box footer-widget row">
              <h3 class="footer-title">Moonlight Security Service</h3>
              
            </div>
            <div class="copyright-row left-box footer-widget row">
              ©Copyright 2016 Moonlight Security Service.</a>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--Jquery UI-->
    <script src="vendors/jquery-ui/jquery-ui.min.js"></script>
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
<%
 }
%>