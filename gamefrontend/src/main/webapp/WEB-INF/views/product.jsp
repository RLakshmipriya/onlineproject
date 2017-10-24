<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp" %>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img src="./resource/images/./resource/images/niit-logo.jpg" class="img-rounded" alt="Cinque Terre" width="40" height="30"> </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="product">Products</a></li>
		
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="basket"><span class="glyphicon glyphicon-shopping-cart"></span>basket<span class="badge">2</span> </a></li>
        <li><a href="usrhome"><span class="glyphicon glyphicon-log-out"></span>LogOut</a></li>
	</ul>
    </div>
  </div>
</nav>
<div class="container">    
  <div class="row"><h3>Product Description</h3>
  
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">${product.name}</div>
        <div class="panel-body"><img src="./resource/image/${product.image}" class="img-responsive" style="width:100%" height="auto" ></div>
        <div class="panel-footer">Price: ${product.price}</div>
			</div>
    </div>
    <div class="col-sm-6">
    <div class="panel panel-warning"><h4>Description</h4>
        <div class="panel-heading" >${product.name}</div>
        <div class="panel-body">${product.description}</div>
        <div class="panel-footer">Price: ${product.price}</div>
        <p><input type="submit" value="Add to cart" class="btn" /></p>
        
			<%-- </div>
						<h3 class="product-title"><b><i>${product.pname}</i></b></h3>

						<p class="product-description">${product.pdescrip}</p>
						
						<h4 class="price"><b>current price: </b><span>${product.pprice}</span></h4>
						
						
						<div class="action">
							<div data-name="Dead Space 3 Edition" data-price="20.00">
					<!--<h3 class="product-name">Dead Space 3 Edition</h3>
						<p class="product-price">$20.00</p>-->
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-1">Quantity</label>
								<input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div> --%>
	<!-- <div class="col-sm-8">
	<div class="panel panel-primary">
        <div class="panel-heading" id="decription"> Description</div>
        <div class="panel-body"><table class="table table-striped">
		<tr><td>Product Type:</td><td>GAMES</td></tr>
		<tr><td>Description:</td><td>"A journey across space to discover the source of the Neucromorph outbreak"</td></tr>
		<tr><td>Price:</td><td>$20.00</td></tr>
		</table></div>
        <div class="panel-footer"><a href="products" role="button" class="btn btn-warning btn-sm btn-block">Add to basket<span class="glyphicon glyphicon-shopping-cart"></span>
						</div></a>
	</div>
	<div class="col-sm-offset-5 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>Continue Shopping
	</a></div>
      
</div>
</div>
<div class="jumbotron">
  <div class="container text-center">
    <h1>NIIT E-Commerce Store</h1>      
    <p>Welcome to the Home of all things NIIT </p> -->
  </div>
</div>
<%@include file="footer.jsp" %>

</body>
</html>