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
        <a class="navbar-brand" href="products">products</a>
        <li><a href="basket">Basket</a></li>
        
        <li><a href="register.jsp">Register</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="jumbotron">
    <h2>Basket</h2>      
    <button type="button" class="btn btn-success">Continue Shopping</button>
  </div>      
</div>

<div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>Producttype</th>
        <th>Game</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Name</td>
        <td>Dead Space 3 Limited Edition</td>
      </tr>      
      <tr class="Description">
        <td>Description</td>
        <td>Dead Space 3 bring Issac clarke and mersciless soldier john Carver on a journey across space to discover the source of the Nercromorph outbreak </td>
      </tr>
      <tr class="Supplier">
        <td>Supplier</td>
        <td>WE ARE GAMES</td>
      </tr>
      <tr class="price">
        <td>Price</td>
        <td>20.00</td>
      </tr>
      
    </tbody>
  </table>
</div>
<a href="usrhome"type="button" class="btn btn-success">Add to Basket</a>
<%@include file="footer.jsp" %>
</body>
</html>
