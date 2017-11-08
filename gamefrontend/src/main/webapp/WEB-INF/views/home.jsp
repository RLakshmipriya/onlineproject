<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>

<style>.carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }</style>
  <body>
<%@include file="navbar.jsp" %>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="./resources/image/img1.jpg" alt="Image">
        <div class="carousel-caption">
		<img src="./resources/image/LOGO.png" style="width:304px;height:228px;">
          <h3>NIIT E-COMMERCE PROJECT</h3>
          <p>WELCOME TO THE HOME OF ALL THINGS NIIT</p>
        </div>      
      </div>
      <div class="item">
        <img src="./resources/image/img3.jpg" alt="Image">
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

  
    page header 
  <div class="row">
    <div class="col-sm-4">
      <img src="./resources/image/pic2.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>DEAD SPACE 3 LIMITED EDITION</p>
    </div></div>
    <div class="row">
    <div class="col-sm-4">
      <img src="./resources/image/pic3.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>HITMAN ABSOLUTION PROFFESSSIONAL EDITION</p>
    </div></div>
	<div class="row">
    <div class="col-sm-4">
      <img src="./resources/image/pic4.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>OPERATION FLASHPOINT:RED RIVER</p>
    </div></div>
	<div class="row">
    <div class="col-sm-4">
      <img src="./resources/image/pic5.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>A LONG WALK TO FREEDOM</p>
    </div>
	<div class="row">
    <div class="col-sm-4">
      <img src="./resources/image/pic6.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>POTICIALLY INCORRECT</p>
    </div><div class="row">
    <div class="col-sm-4">
      <img src="./resources/image/pic7.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>THE BORN BED</p>
    </div>
	
    
    </div>
  </div>
</div><br>

<%@include file="footer.jsp" %>

</body>
</html>
