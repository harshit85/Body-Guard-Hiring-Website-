<%
  if(session.getAttribute( "Admin" )!=null)
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
  			<div class="row">
  				<form class="col-md-9 checkout-form" action="http://localhost:8080/examples/Atul%20site/AdminPanel1.jsp?ur=1" method="post" role="form" data-toggle="validator">
					<h3 class="checkout-heading">Enter Bodyguards Informations</h3>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="fname">Name</label>
							<input type="text" class="form-control" name="name" required="required" id="fname">
              <label for="fname">ex Ramesh Lal bhushan</label>
						</div>
            <div class="col-sm-6 form-group">
              <label for="fname">Category</label>
              <input type="text" class="form-control" name="category" required="required" id="fname">
              <label for="fname">Ex- Personal Bodyguard, Security Guard etc</label>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6 form-group">
              <label for="e-address">Qualifiation</label>
              <input type="text" class="form-control" name="qualification" required="required" id="e-address">
              <label for="fname">Ex- ex Army Soldiers</label>
            </div>
            <div class="col-sm-6 form-group">
              <label for="e-address">Experience</label>
              <input type="text" class="form-control" name="experience" required="required" id="e-address">
              <label for="fname">Ex- 4 years</label>
            </div>
					</div>
          <div class="row">
            <div class="col-sm-6 form-group">
                  <label for="e-address">Star</label>
                  <input type="text" class="form-control" name="star" required="required" id="e-address">
                  <label for="fname">Ex- 3</label>
              </div>
              <div class="col-sm-6 form-group">
                  <label for="e-address">Price</label>
                  <input type="text" class="form-control" name="price" required="required" id="e-address">
                  <label for="fname">Ex- 4000</label>
                </div>
          </div>
          <div class="row">
            <div class="col-sm-6 form-group">
                <label for="e-address">Image Location</label>
                <input type="text" class="form-control" name="image" required="required" id="e-address">
                <label for="fname">Ex- images/Shop/2.jpg<br>Image must be within the image folder</label>
            </div>
          </div>
					<input type="submit" value="Submit" class="btn btn-default place-order">
				</form>
  			</div>
  		</div>
  	</section>
      <div class="container">
        <div class="row">
           <div class="col-sm-6 form-group">
           <a href="http://localhost:8080/examples/Atul%20site/AdminPanel2.jsp?ur=1" target="_blank"><input type="submit" value="Show Bodyguard Details" class="btn btn-default place-order"></a>
           </div>
        </div>
      </div>
      <section class="row checkout-content">
      <div class="container">
        <div class="row">
          <form class="col-md-9 checkout-form" action="http://localhost:8080/examples/Atul%20site/AdminPanel1.jsp?ur=2" method="post" role="form" data-toggle="validator">
          <h3 class="checkout-heading">Delete Bodyguards Informations</h3>
          <div class="row">
          <div class="col-sm-6 form-group">
              <label for="e-address">Image Location</label>
              <input type="text" class="form-control" name="image" required="required" id="e-address">
              <label for="fname">Ex- images/Shop/2.jpg<br>Image must be within the image folder</label>
            </div>
          </div>
          <input type="submit" value="Submit" class="btn btn-default place-order">
        </form>
        </div>
      </div>
    </section>
    
    <div class="container">
        <div class="row">
           <div class="col-sm-6 form-group">
           <a href="http://localhost:8080/examples/Atul%20site/AdminPanel2.jsp?ur=2" target="_blank"><input type="submit" value="Show User Details" class="btn btn-default place-order"></a>
           </div>
        </div>
      </div>
    <section class="row checkout-content">
      <div class="container">
        <div class="row">
          <form class="col-md-9 checkout-form" action="http://localhost:8080/examples/Atul%20site/AdminPanel1.jsp?ur=3" method="post" role="form" data-toggle="validator">
          <h3 class="checkout-heading">Delete user Informations</h3>
          <div class="row">
          <div class="col-sm-6 form-group">
              <label for="e-address">Email of user</label>
              <input type="text" class="form-control" name="email" required="required" id="e-address">
              <label for="fname">Ex- images/Shop/2.jpg<br>Image must be within the image folder</label>
            </div>
          </div>
          <input type="submit" value="Submit" class="btn btn-default place-order">
        </form>
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
<%
}
%>