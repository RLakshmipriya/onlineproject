<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@include file="header.jsp" %>
<style>
	body{
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
    pupdateing-top: 90px;
}
.panel-update {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-update>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align:center;
}
.panel-update>.panel-heading a{
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-update>.panel-heading a.active{
	color: #029f5b;
	font-size: 18px;
}
.panel-update>.panel-heading hr{
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
.panel-update input[type="text"],.panel-update input[type="email"],.panel-update input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-update input:hover,
.panel-update input:focus {
	outline:none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}
.btn-update {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	pupdateing: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}
.btn-update:hover,
.btn-update:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}
</style>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<div class="container">
    	<div class="row">
			<div class="col-lg-12">
					<div class="panel panel-update">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Update Products</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="update" action="updateproduct" method="POST" role="form" style="display: block;">
						<input type="hidden" name="pid" value="${product.pid}" />									
									
									<div class="form-group">
										<select   class="form-control" name="sid" id="sid" tabindex="1" >								
										
										<c:forEach items="${supplier}" var="supplier">
										<c:choose>
											<c:when test="${supplier.sid eq product.sid.sid}">
												<option value="${supplier.sid}" selected="selected">${supplier.sname}</option>
											</c:when>
											<c:otherwise>
												<option value="${supplier.sid}">${supplier.sname}</option>
											</c:otherwise>											
										</c:choose>
										
										
										</c:forEach>
    									</select>
									
									</div>
									<div class="form-group">
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" value="${product.pname}" >
									</div>
									<div class="form-group">  
 										 <select  name="cid" class="form-control" id="cid" tabindex="1" > 										 										
    																			
    									<c:forEach items="${categories}" var="category">
    										<c:choose>
    											<c:when test="${category.cid eq product.cid.cid }">
    												<option value="${category.cid}" selected>${category.cname}</option>
    											</c:when>
    											<c:otherwise>
    												<option value="${category.cid}">${category.cname}</option>
    											</c:otherwise>
    										</c:choose>    									
										</c:forEach>
    									</select>
    									
    								</div>
								
									<div class="form-group">
										<input type="text" name="pdescription" id="pdescription" tabindex="1" class="form-control" placeholder="Description" value="${product.pdescription}" >
									</div>
									<div class="form-group">
										<input type="text" name="pstock" id="pstock" tabindex="1" class="form-control" placeholder="Stock"  value="${product.pstock}">
									</div>
									<div class="form-group">
										<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price"  value="${product.pprice}">
									</div>
									<div class="form-group">
										<input type="file" name="pimg" id="pimg" tabindex="1" class="form-control" placeholder="Image" value="${product.pimg}">
										
									</div>				
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update Product">
											</div>
											
										</div>
									</div>
								</form>
</div>
</div>
</div></div></div></div>
</div>

<div class="container">
    	<div class="row">
			<div class="col-lg-12">
					<div class="panel panel-update">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Update Products</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="update" action="updatecategory" method="POST" role="form" style="display: block;" >
									
									<input type="hidden" name="cid" value="${category.cid}" />
									<div class="form-group">
										<input type="text" name="cname" id="cname" tabindex="1" class="form-control" placeholder="Category Name" value="${category.cname}">
									</div>
									<div class="form-group">
										<input type="text" name="cdescription" id="cdescription" tabindex="1" class="form-control" placeholder="Description" value="${category.cdescription}" >
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update Category">
											</div>
											
										</div>
									</div>
								</form>
</div>
</div>
</div></div></div>
</div></div>

<%@include file="footer.jsp" %>
</body>
</html>