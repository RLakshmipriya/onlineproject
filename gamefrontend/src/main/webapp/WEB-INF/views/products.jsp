<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
//<%@ page isELIgnored="false" %>


<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Home</a>
    </div>
    <ul class="nav navbar-nav">
	 <li><a href="login.jsp">Basket</a></li>
      <li class="active"><a href="products">Products</a></li>
      
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="register"><span class="glyphicon glyphicon-register"></span> Register</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <div class="jumbotron">
    <h1>NIIT E-Commerce Project</h1>      
    <p>Welcome To the home of all things NIIT.</p>
  </div>
  <div class="container">    
  <div class="row"><h3>Product Description</h3>
  <c:forEach items="${products}" var="p">
  
    <div class="col-sm-4">
      <div class="panel panel-warning">
        <div class="panel-heading">${p.name}</div>
        <div class="panel-body"><img src="./resource/image/${p.image }" class="img-responsive" style="width:100%" height="auto" ></div>
        <div class="panel-footer">Price: ${p.price}</div>
        <div><a href="product?id=${p.id}" role="button" class="btn btn-warning">Add to cart</a></div>
			</div>
    </div></c:forEach></div></div>
  <%-- <p>Currently Your Basket Contain Truly Awesome Products(s).</p>            
  
  <table>
  <tr>
    <th>Name</th>
    <th>Price</th>
  </tr> <c:forEach items="${products}" var="p">
  <tr>
  <td> <a href="description">dead space 3 limited edition</a></td>
    <td>20.00</td>
  </tr></c:forEach> --%>
  <!-- <tr>
    <td><a href="description">Hitman Absolution Profressional Edition</a></td>
    <td>10.00</td>
  </tr>
  <tr>
    <td><a href="description">Operation Flashpoint:Red river</a></td>
    <td>11.12</td>
  </tr>
  <tr>
    <td><a href="description">A long Walk To Freedom</a></td>
    <td>23.00</td>
  </tr>
  <tr>
    <td><a href="description">Politically incorrect</a></td>
    <td>22.00</td>
  </tr>
  <tr>
    <td><a href="description">A Born Bed</a></td>
    <td>19.99</td>
  </tr> -->
</table>
</div>
<p>@NIIT E-COMMERCE Case Study project 2017</p>
<%@include file="footer.jsp" %>
</body>
</html>
