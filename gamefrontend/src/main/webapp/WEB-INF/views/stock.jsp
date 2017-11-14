<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
<%@include file="header.jsp"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>
<%@include file="navbar.jsp"%>
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
        
    
      <c:forEach items="${products}" var="p"> 
      <div class="row"> 
      <div class="col-sm-12">
      <div class="col-sm-2 panel-body">${p.pid}</div>
      <div class="col-sm-2 panel-body">${p.pname}</div>
      <div class="col-sm-2 panel-body">${p.pdescription}</div>
      <div class="col-sm-2 panel-body">${p.pstock}</div>
      <div class="col-sm-2 panel-body">${p.pprice}</div>
      <div class="col-sm-2 panel-body">
      <a href="updateproduct?id=${p.pid}" type="button" class="btn btn-warning btn-sm "><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deleteproduct?id=${p.pid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      </div></div>
      </c:forEach>
      
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
 
<div class="container"> 
  <div class="row">  
    <div class="col-sm-12"> 
      <div class="panel panel-primary">
      <div align="center" class="col-sm-2 panel-heading">Supplier_Id</div>
      <div align="center" class="col-sm-2 panel-heading">Supplier_Name</div>
      <div align="center" class="col-sm-2 panel-heading">Supplier_Address</div>
      <div align="center" class="col-sm-2 panel-heading">Supplier_Email</div>
      <div align="center" class="col-sm-2 panel-heading">Supplier_Contact</div>
      <div align="center" class="col-sm-2 panel-heading">Action</div>
      </div></div></div>
      <%-- <a href="view?id=${p.pid}"><img src="./resources/image/${p.pimg}" class="img-responsive" style="width:100%" ></a> --%>
  <div class="row">  
    <div class="col-sm-12">
      <c:forEach items="${suppliers}" var="supplier"> 
      <div align="center" class="col-sm-2 panel-body">${supplier.sid}</div>
      <div align="center" class="col-sm-2 panel-body">${supplier.sname}</div>
      <div align="center" class="col-sm-2 panel-body">${supplier.saddress}</div>
      <div align="center" class="col-sm-2 panel-body">${supplier.semail}</div>
      <div align="center" class="col-sm-2 panel-body">${supplier.scontact}</div>
      <div align="center" class="col-sm-2 panel-body">
      <a href="updatesupplier?id=${supplier.sid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deletesupplier?id=${supplier.sid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      <div class="alert alert-success alert-dismissable">
 			 <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  			<strong>Success!</strong> Indicates a successful or positive action.
	</div>
      </c:forEach>
      </div></div>
</div>
     
     
 <%--  <div class="container"> 
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
    </div></c:forEach></div></div>

 --%>
<%@include file="footer.jsp" %>
</body>
</html>
