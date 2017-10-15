<!DOCTYPE html>
<html lang="en">
<%@include file=header.jsp %>
<body>

<h3>Login Page</h3>
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
        <li><a href="basket.jsp">Basket</a></li>
        
        <li><a href="register.jsp">Register</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <div class="jumbotron">
    <h2>Login </h2>      
    <a href="products.jsp"><button type="button" class="btn btn-success">continue shopping</button>
</a>  </div>     
</div>
<div class="container">
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-1" for="email">Login:</label>
      <div class="col-sm-7">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-1" for="pwd">Password:</label>
      <div class="col-sm-7">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-1 col-sm-7">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-1 col-sm-7">
        <a> href="usrhome.jsp"<button type="submit" action="usrhome.jsp"class="btn btn-success">login</button></a>
      </div>
    </div>
  </form>
</div>
<p>@NIIT E-COMMERCE Case Study project 2017</p>
<%@include file=footer.jsp %>
</body>
</html>
