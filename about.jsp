<!DOCTYPE html>
<html lang="en">
<head>
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
          <li class="email"><a href="#"><i class="fa fa-envelope-o"></i>sroshan145@gmail.com</a></li>
          <li><a href="https://www.facebook.com/blackvalkindia/"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
          <li class="tel"><a href="#"><i class="fa fa-phone"></i>+918828030414</a></li>
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
        <a href="index.jsp" class="navbar-brand"><img src="images/logo1.png" height="32" width="232" alt=""></a>
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
  	
  	<!--Page Cover-->
  	<section class="row page-cover2">
  		<div class="row m0">
  			<div class="container">
          <p>Moon Light Security service was founded in 1999 by Moore Jonson, who has many years of professional training with an edge in protection. Today, Moon Light Security service is one of the most respected body guard services around the world; much due to the unique training our employees exercise regularly.Moon Light Security service is a modern organization with competent employees, with several years’ worth of experience in body guarding. Because of this, Moon Light Security service can offer inspiring work with the client at the center. Moon Light Security service has no local office; we operate around the globe. Moon Light Security service services are divided into three business categories: 

        <h3>Bodyguard</h3>
        Personal protection of one or more clients; around the clock; all year long. 

         <h3>Transportation</h3>
          We provide transport for persons or valuable objects. 

         <h3> Bodyguard training</h3>
          We train body guards, whether the trainee has prior experience or not. We can also offer special training for security personnel.
</p>
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
                <li class="tel"><a href="#"><i class="fa fa-phone"></i>+918828030414</a></li>
                 <li class="email"><a href="#"><i class="fa fa-envelope-o"></i>sroshan145@gmail.com</a></li>
                <li><a href="https://www.facebook.com/blackvalkindia/"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-5 col-md-pull-7 half-side">
            <div class="footer-about left-box footer-widget row">
              <h3 class="footer-title">BlackvalkIndia Security Service</h3>
              
            </div>
            <div class="copyright-row left-box footer-widget row">
            ©Copyright 2017 BlackvalkIndia Security Service.</a>
            </div>
          </div>
        </div>
      </div>
    </footer>
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