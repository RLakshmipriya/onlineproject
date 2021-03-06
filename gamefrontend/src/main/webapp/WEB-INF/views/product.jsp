<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
 <%@include file="header.jsp" %>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>

<%@include file="navbar.jsp"%>
<div class="container">  
  <div class="row"><h2>Product Description</h2>
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading" >${product.pname}</div>
        <div class="panel-body"><img src="./resources/image/${product.pimg}" class="img-responsive" style="width:100%" height="auto" ></div>
        <div class="panel-footer">Price:${product.pprice}</div>
			</div>
    </div>
	<div class="col-sm-8">
	<div class="panel panel-primary">
        <div class="panel-heading">   Product Description</div>
        <div class="panel-body"><table class="table table-striped">
		<tr><td class="col-sm-2">Product Type:</td><td align="left">GAMES</td></tr>
		<tr><td class="col-sm-2">Description:</td><td align="left">${product.pdescription}<!-- "A journey across space to discover the source of the Neucromorph outbreak" --></td></tr>
		<!-- <tr><td>Supplier:</td><td>WE ARE GAMES</td></tr> -->
		<tr><td class="col-sm-2">Price:</td><td align="left">${product.pprice}</td></tr>
		</table></div>
        <div class="panel-footer"><a href="addToCart?id=${product.pid}" role="button" class="btn btn-warning btn-sm btn-block">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
						</a></div>
	</div>
	<div class="col-sm-offset-5 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>Continue Shopping
	</a></div>
      
</div>
</div>
</div>

<%@include file="footer.jsp" %>

</body>
</html>