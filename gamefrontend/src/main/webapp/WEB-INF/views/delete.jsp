<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
      <a class="navbar-brand" href="#"><img src="./resource/images/Capture.jpg" class="img-rounded" alt="NIIT" width="40" height="30"> </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="stock">Home</a></li>
		<li  class="dropdown"><a href="#"class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-plus"></span>Add</a>
			<ul class="dropdown-menu">
				<li><a href="addproduct">Product</a>
				<li><a href="addcategory">Category</a>
				<li><a href="addsupplier">Supplier</a>
			</ul>
			
		</li>
		<li><a href="update"><span class="glyphicon glyphicon-pencil"></span>Update</a></li>
		<li><a href="delete"><span class="glyphicon glyphicon-trash"></span>Delete</a></li>
        <li><a href="view"><span class="glyphicon glyphicon-list-alt"></span>My Products</a></li>
		
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="orders"><span class="glyphicon glyphicon-tasks"></span>My Orders<span class="badge">2</span> </a></li>
        <li><a href="home"><span class="glyphicon glyphicon-log-out"></span>LogOut</a></li>
	</ul>
    </div>
  </div>
</nav>
<div class="container">
    	<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-delete">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Delete Products</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="delete" action="delete" method="POST" role="form" style="display: block;">
									
									<div class="form-group">
										<input type="text" name="id" id="id" tabindex="1" class="form-control" placeholder="Product Id " >
									</div>
																					
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="delete-submit" id="delete-submit" tabindex="4" class="form-control btn btn-delete" value="Delete">
											</div>
											
										</div>
									</div>
								</form>
</div>
</div>
</div></div></div>
</div>
</div>
<div class="jumbotron">
  <div class="container text-center">
	<img src="./resource/images/logo1.jpg" class="img-rounded" alt="NIIT" width="200" height="120">
    <h1>NIIT E-Commerce Store</h1>      
    <p>Welcome to the Home of all things NIIT </p>
  </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>