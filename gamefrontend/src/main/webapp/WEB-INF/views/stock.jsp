<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
<%@include file="header.jsp"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="col-sm-14"> 
      <div class="panel panel-primary">
      <!-- <div class="col-sm-2 panel-heading">Image</div> -->
      <div class="col-sm-2 panel-heading">Id</div>
      <div class="col-sm-2 panel-heading">Name</div>
      <div class="col-sm-2 panel-heading">Description</div>
      <div class="col-sm-2 panel-heading">Stock</div>
      <div class="col-sm-2 panel-heading">Price</div>
      <div class="col-sm-2 panel-heading">Action</div>
      </div></div></div>
       <div class="row">  
    <div class="col-sm-12">
      <c:forEach items="${products}" var="p"> 
      <div class="col-sm-2 panel-body">${p.pid}</div>
      <div class="col-sm-2 panel-body">${p.pname}</div>
      <div class="col-sm-2 panel-body">${p.pdescription}</div>
      <div class="col-sm-2 panel-body">${p.pstock}</div>
      <div class="col-sm-2 panel-body">${p.pprice}</div>
      <div class="col-sm-2 panel-body">
      <a href="updateproduct?id=${p.pid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deleteproduct?id=${p.pid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      </c:forEach>
      </div></div>
     </div> 
     <div class="container"> 
  <div class="row">  
    <div class="col-sm-12"> 
      <div class="panel panel-primary">
      <!-- <div class="col-sm-2 panel-heading">Image</div> -->
      <div class="col-sm-2 panel-heading">Id</div>
      <div class="col-sm-3 panel-heading">Name</div>
      <div class="col-sm-5 panel-heading">Description</div>
      <div class="col-sm-2 panel-heading">Action</div>
      </div></div></div>
       <div class="row">  
    <div class="col-sm-12">
      <c:forEach items="${categories}" var="category"> 
      <div class="col-sm-2 panel-body">${category.cid}</div>
      <div class="col-sm-3 panel-body">${category.cname}</div>
      <div class="col-sm-5 panel-body">${category.cdescription}</div>
      <div class="col-sm-2 panel-body">
      <a href="updatecategory?id=${category.cid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deletecategory?id=${category.cid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      </c:forEach>
      </div></div>
      </div>
     
     
<!--  <div class="container"> 
  <div class="row">
  <c:forEach items="${products}" var="p">  
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading" >${p.pname}</div>
        <div class="panel-body"><a href="view?id=${p.pid}"><img src="./resources/image/${p.pimg}" class="img-responsive" style="width:100%" ></a></div>
        <div class="panel-footer">Price:${p.pprice}
			<a href="view?id=${p.pid}" type="button" action="view" method="GET" class="btn btn-warning btn-sm btn-block">View Details<span class="glyphicon glyphicon-list-alt"></span>
								</a></div>
      </div>
    </div></c:forEach></div></div>-->


<%@include file="footer.jsp" %>
</body>
</html>
