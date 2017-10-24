<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Home</a>
    </div>
    <ul class="nav navbar-nav">
	 <li><a href="login">Basket</a></li>
      <li class="active"><a href="#">Products</a></li>
      
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="home"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <div class="jumbotron">
    <h1>NIIT E-Commerce Project</h1>      
    <p>Welcome To the home of all things NIIT.</p>
  </div>
  <p>Currently Your Basket Contain Truly Awesome Products(s).</p>            
  
  <table>
  <tr>
    <th>Name</th>
    <th>Price</th>
  </tr>
  <tr>
  <td> <a href="description">dead space 3 limited edition</a></td>
    <td>20.00</td>
  </tr>
  <tr>
    <td><a href="description">Hitman Absolution Profressional Edition</a></td>
    <td>10.00</td>
  </tr>
  <tr>
    <td><a href="description">Operation Flashpoint:Red river</a></td>
    <td>11.12</td>
  </tr>
  <tr>
    <td><a href="description.jsp">A long Walk To Freedom</a></td>
    <td>23.00</td>
  </tr>
  <tr>
    <td><a href="description">Politically incorrect</a></td>
    <td>22.00</td>
  </tr>
  <tr>
    <td><a href="description">A Born Bed</a></td>
    <td>19.99</td>
  </tr>
</table>
</div>
<p>@NIIT E-COMMERCE Case Study project 2017</p>
<%@include file="footer.jsp" %>
</body>
</html>