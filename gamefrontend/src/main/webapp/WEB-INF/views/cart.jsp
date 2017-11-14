<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
<%@include file="header.jsp"%>

<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>

<%@include file="navbar.jsp"%>
<div class="container"> 
<div class="row">	
<div  align="center"class="col-sm-4 col-sm-offset-4">
<div class="panel panel-info">
<div align="center" class="panel-heading"><b style="font-size:150%;">Cart</b></div>
</div>
</div>
</div>			
  <div class="row">  
    <div class="col-sm-10">
      <div class="panel panel-primary">
      <div align="center" class="col-sm-2 panel-heading">Product_Name</div>
      <div align="center" class="col-sm-2 panel-heading">Quantity</div>
      <div align="center" class="col-sm-2 panel-heading">Price</div>
      <div align="center" class="col-sm-2 panel-heading">Amount</div>
      <div align="center" class="col-sm-2 panel-heading">Action</div>
      </div></div></div>
      <%-- <a href="view?id=${p.pid}"><img src="./resource/images/${p.pimg}" class="img-responsive" style="width:100%" ></a> --%>
        <c:forEach items="${sessionScope['cart'].cartItems}" var="c"> 
  <div class="row">  
    <div class="col-sm-10">

      <div align="center" class="col-sm-2 panel-body">${c.product.pname}</div>
      <div align="center" class="col-sm-2 panel-body">${c.itemCount}</div>
      <div align="center" class="col-sm-2 panel-body">${c.itemPrice}</div>
     <%--  <div align="center" class="col-sm-2 panel-body">${c.total}</div> --%>
      <div align="center" class="col-sm-2 panel-body">
      <a href="updateitem?id=${p.pid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deleteitem?id=${p.pid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      
       
      </div>
      
      </div>
          </c:forEach> 
      <div class="col-sm-12 panel panel-default"></div>	
</div>
<%@include file="footer.jsp"%>

</body>
</html> 
 <%-- <!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h5>
							</div>
							<div class="col-xs-6"><a href="products">
								<button type="button" class="btn btn-primary btn-sm btn-block" >
									<span class="glyphicon glyphicon-share-alt"></span> Continue shopping
								</button></a>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
					<form id="cart"  action="updateCart" method="POST" role="form" style="display: block;" >
						<div class="col-xs-2"><img class="img-responsive" src="./resources/image/${product.pimg }">
						</div>
						<div class="col-xs-4">
							<h4 class="product-name"><strong>${product.pname}</strong></h4><h4><small>${product.pdescription}</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong>${product.pprice} <span class="text-muted">X</span></strong></h6>
							</div>
							<div class="col-xs-4">
								<input type="text" class="form-control input-sm" name="itemCount" value=1>
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button>
							</div>
						</div></form>
					</div>
					<!-- <hr>
					<div class="row">
						<div class="col-xs-2"><img class="img-responsive" src="./resource/images/prod.jpg">
						</div>
						<div class="col-xs-4">
							<h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
							</div>
							<div class="col-xs-4">
								<input type="text" class="form-control input-sm" value="1">
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash"> </span>
								</button>
							</div>
						</div>
					</div>
					<hr> -->
					<div class="row">
						<div class="text-center">
							<div class="col-xs-9">
								<h6 class="text-right">Added items?</h6>
							</div>
							<div class="col-xs-3"><a href="addToCart?id=${product.pid}">
								<button type="button" class="btn btn-default btn-sm btn-block">
									Update cart
								</button></a>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right">Total <strong>$50.00</strong></h4>
						</div>
						<div class="col-xs-3">
							<a href="customerdetails" type="button" class="btn btn-success btn-block">
								Checkout
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html> --%>