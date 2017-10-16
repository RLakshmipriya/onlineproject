<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>
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
        <li><a href="basket">Basket</a></li>
		<li><a href="products">Products</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
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
        <img src="./resource/image/img1.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>NIIT E-COMMERCE PROJECT</h3>
          <p>WELCOME TO THE HOME OF ALL THINGS NIIT</p>
        </div>      
      </div>

      <div class="item">
        <img src="./resource/image/img3.jpg" alt="Image">
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
              
			  <h2 class="sub-title">Currently Your Basket Contains Truly Awesome Products(s).</h2>
            </div>
			</div>
			</div>
			</div>
			<div class="container"></div>
			</header>
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
      <img src="./resource/image/pic2.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Dead Space 3 Limited Edition</p>
    </div></div>
    <div class="row">
    <div class="col-sm-4">
      <img src="./resource/image/pic3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Hitman Absolution Professional Edition</p>
    </div></div>
	<div class="row">
    <div class="col-sm-4">
      <img src="./resource/image/pic4.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Operation Flashpoint:Red river </p>
    </div></div>
	<div class="row">
    <div class="col-sm-4">
      <img src="./resource/image/pic5.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>A Long Walk To Freedom</p>
    </div>
	<div class="row">
    <div class="col-sm-4">
      <img src="./resource/image/pic6.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>Politically Incorrect</p>
    </div><div class="row">
    <div class="col-sm-4">
      <img src="./resource/image/pic7.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>The Bone Bed</p>
    </div>
	
    
    </div>
  </div>
</div><br>

<%@include file="footer.jsp" %>

</body>
</html>
