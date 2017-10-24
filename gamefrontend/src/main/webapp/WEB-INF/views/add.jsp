<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp" %>
<body>
<style>
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}

  body {
    padding-top: 90px;
}
.panel-add {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-add>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align:center;
}
.panel-add>.panel-heading a{
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-add>.panel-heading a.active{
	color: #029f5b;
	font-size: 18px;
}
.panel-add>.panel-heading hr{
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-add input[type="text"],.panel-add input[type="email"],.panel-add input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-add input:hover,
.panel-add input:focus {
	outline:none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}
.btn-add {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}
.btn-add:hover,
.btn-add:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}
</style>
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
        <li><a href="stock">Home</a></li>
		<li class="active"><a href="add"><span class="glyphicon glyphicon-plus"></span>Add</a></li>
		<li><a href="update"><span class="glyphicon glyphicon-pencil"></span>Update</a></li>
		<li><a href="delete"><span class="glyphicon glyphicon-trash"></span>Delete</a></li>
        <li><a href="view"><span class="glyphicon glyphicon-list-alt"></span> Products</a></li>
		
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="orders"><span class="glyphicon glyphicon-tasks"></span>My order </a></li>
        <li><a href="myhome"><span class="glyphicon glyphicon-log-out"></span>LogOut</a></li>
	</ul>
    </div>
  </div>
</nav>
<div class="container">
    	<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-add">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Add Products</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="add" action="add" method="POST" role="form" style="display: block;">
									
									<div class="form-group">
										<input type="text" name="supid" id="supid" tabindex="1" class="form-control" placeholder="Supplier Id  Ex:'S_xxx'" >
									</div>
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="Product Name" >
									</div>
									<div class="form-group">
										<input type="text" name="description" id="description" tabindex="1" class="form-control" placeholder="Description" >
									</div>
									<div class="form-group">
										<input type="text" name="quantity" id="quantity" tabindex="1" class="form-control" placeholder="Quantity" >
									</div>
									<div class="form-group">
										<input type="text" name="price" id="price" tabindex="1" class="form-control" placeholder="Price">
									</div>
									<div class="form-group">
										<input type="file" name="image" id="image"" tabindex="1" class="form-control" placeholder="Image">										
									</div>
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="add-submit" id="add-submit" tabindex="4" class="form-control btn btn-add" value="Add">
											</div>
											
										</div>
									</div>
								</form>
</div>
</div>
</div></div></div>
</div>
</div>


<%@include file="footer.jsp" %>
</body>
</html>