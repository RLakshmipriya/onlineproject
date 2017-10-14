<!DOCTYPE html>
<html lang="en">
<head>
  <title>home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="register.html">Basket</a></li>
        
        <li><a href="register.html">Register</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img1.jpg" alt="Image">
        <div class="carousel-caption">
		<img src="LOGO.png" style="width:304px;height:228px;">
          <h3>NIIT E-COMMERCE PROJECT</h3>
          <p>WELCOME TO THE HOME OF ALL THINGS NIIT</p>
        </div>      
      </div>
      <div class="item">
        <img src="img3.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>NIIT </h3>
         
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
 Page Header -->
    <header class="masthead" style="background-image: url('img/home-bg.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              
			  <h2 class="sub-title">Currently Your Basket Contains Truly Awesome Products(s).</h5>
            </div>
			</div>
			</div>
			<div class="container">
			
			<table class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Price</th>
      </tr>
    </thead>
    <tbody>
      
	  <tr>
        <td>Dead Space 3 Limited Edition</td>
        <td>20.00</td>
      </tr>
      <tr>
        <td>Hitman Absolution Professional Edition</td>
        <td>10.00</td>
      </tr>
      <tr>
        <td>Operation Flashpoint:Red river </td>
        <td>11.12</td>
      </tr>
	  <tr>
        <td>A Long Walk To Freedom</td>
        <td>23.00</td>
      </tr>
	  </tr>
	  <tr>
        <td>Politically Incorrect</td>
        <td>22.00</td>
      </tr>
	  <tr>
        <td>The Bone Bed</td>
        <td>19.99</td>
      </tr>
    </tbody>
  
</table>
  
    
  
  <div class="row">
    <div class="col-sm-4">
      <img src="pic2.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>DEAD SPACE 3 LIMITED EDITION</p>
    </div>
    <div class="row">
    <div class="col-sm-4">
      <img src="pic3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>HITMAN ABSOLUTION PROFFESSSIONAL EDITION</p>
    </div>
	<div class="row">
    <div class="col-sm-4">
      <img src="pic4.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>OPERATION FLASHPOINT:RED RIVER</p>
    </div>
	<div class="row">
    <div class="col-sm-4">
      <img src="pic5.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>A LONG WALK TO FREEDOM</p>
    </div>
	<div class="row">
    <div class="col-sm-4">
      <img src="pic6.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>POTICIALLY INCORRECT</p>
    </div><div class="row">
    <div class="col-sm-4">
      <img src="pic7.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>THE BORN BED</p>
    </div>
	
    
    </div>
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p>@NIIT E-COMMERCE PROJECT</p>
</footer>

</body>
</html>
