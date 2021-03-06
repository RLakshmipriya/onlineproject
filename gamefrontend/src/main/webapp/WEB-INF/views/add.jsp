<!DOCTYPE html >
<html lang="en">
<%@page isELIgnored="false" %>
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
<%@include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
						<form id="add"  action="addproduct" method="POST" role="form" style="display: block;" >
																		
									<div class="form-group">
										<select   class="form-control" name="sid" id="sid" tabindex="1" >
										<option value="" disabled selected> Select Supplier Name</option>
										<c:forEach items="${supplier}" var="supplier">
      									<option value="${supplier.sid}">${supplier.sname}</option>
										</c:forEach>
    									</select>
									
									</div>
									<div class="form-group">
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" >
									</div>
									<div class="form-group">  
 										 <select  name="cid" class="form-control" id="cid" tabindex="1" > 										 										
    									<option value="" disabled selected>Select Product Category</option>										
    									<c:forEach items="${categories}" var="cat">
      									<option value="${category.cid}">${category.cname}</option>
										</c:forEach>
    									</select>
    								</div>
								
									<div class="form-group">
										<input type="text" name="pdescription" id="pdescription" tabindex="1" class="form-control" placeholder="Description" >
									</div>
									<div class="form-group">
										<input type="text" name="pstock" id="pstock" tabindex="1" class="form-control" placeholder="Stock" >
									</div>
									<div class="form-group">
										<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price">
									</div>
									<div class="form-group">
										<input type="file" name="pimg" id="pimg" tabindex="1" class="form-control" placeholder="Image">
										
									</div>
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="add-submit" id="add-submit" tabindex="4" class="form-control btn btn-add" value="Add Product">
											</div>
											
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								</form>
</div>
</div>
</div></div></div>
</div>
<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-add">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Add Category</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="add" action="addcategory" method="POST" role="form" style="display: block;" >
									
									
									<div class="form-group">
										<input type="text" name="cname" id="cname" tabindex="1" class="form-control" placeholder="Category Name" >
									</div>
									<div class="form-group">
										<input type="text" name="cdescription" id="cdescription" tabindex="1" class="form-control" placeholder="Description" >
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="add-submit" id="add-submit" tabindex="4" class="form-control btn btn-add" value="Add Category">
											</div>
											
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								</form>
</div>
</div>
</div></div></div>
</div>
<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-add">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Add Supplier</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="add"  action="addsupplier" method="POST" role="form" style="display: block;" >
									
									
									<div class="form-group">
										<input type="text" name="sname" id="sname" tabindex="1" class="form-control" placeholder="Supplier Name" >
									</div>
									<div class="form-group">
										<input type="text" name="saddress" id="saddress" tabindex="1" class="form-control" placeholder="Supplier Address" >
									</div>
									<div class="form-group">
										<input type="email" name="semail" id="semail" tabindex="1" class="form-control" placeholder="Supplier Email" >
									</div>
									<div class="form-group">
										<input type="text" name="scontact" id="scontact" tabindex="1" class="form-control" placeholder="Supplier Contact" >
									</div>
									
																				
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="add-submit" id="add-submit" tabindex="4" class="form-control btn btn-add" value="Add Supplier">
											</div>
											
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								</form>
</div>
</div>
</div></div></div>
</div>
</div>

<%@include file="footer.jsp"%>

</body>
</html>
<%-- 
<%@include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
					</div>	</div></div></div>
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form action="addproduct" method="POST" role="form" style="display: block;">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>			
									
									<div class="form-group">
									<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" >
									</div>
									<div class="form-group">
 
 									 <select   class="form-control" name="sid" id="sid" tabindex="1" placeholder="Select Supplier">
 									 <option value="" disabled selected> Select Supplier Name</option>
 										 										<!-- <option id="1" value="Puzzles">Puzzles</option>
    																			<option id="2" value="Runner Games">Runner Games</option>
    																			<option id="3" value="Thriller Games">Thriller Games</option>
    																			<option id="4" value="Cookery">Cookery</option> -->
    								 <c:forEach items="${supplier}" var="s">
      								<option value="${s.sid}">${s.sname}</option>
									</c:forEach>
    								</select>
    								</div>
    					<div class="form-group">			 
  						<select   class="form-control" name="cid" id="cid" tabindex="1" placeholder="Select Category">
 						<option value="" disabled selected>Select Product Category</option>	
    					 <c:forEach items="${categories}" var="c">
      					<option value="${c.cid}">${c.cname}</option>
							 </c:forEach>
    					</select></div>
									<div class="form-group">
									<input type="text" name="pdescription" id="pdescription" tabindex="1" class="form-control" placeholder="Description" >
									</div>
									<div class="form-group">
									<input type="text" name="pstock" id="pstock" tabindex="1" class="form-control" placeholder="Stock" >
									</div>
									<div class="form-group">
									<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price">
									</div>
									<div class="form-group">
									<input type="file" name="pimg" id="pimg"" tabindex="1" class="form-control" placeholder="Image">										
									</div>
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
											<input type="submit" name="addProductBut" tabindex="4" class="form-control btn btn-add" value="Add">
											</div>
											
										</div>
									</div>
									
								</form>
</div>

       <div class="container">
      
    	<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-add">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Add Category</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form action="addcategory" method="POST" style="display: block;">
						 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									
									<div class="form-group">
										<input type="text" name="cname"id="cname" tabindex="1"  class="form-control" placeholder="category Name">
									</div>
									<div class="form-group">
										<input type="text" name="cdescription" id="cdescription" tabindex="1"class="form-control" placeholder="category Description">
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="addCategoryBut" class="form-control btn btn-add" value="Add">
											</div>
											
										</div>
									</div>
									
								</form>
</div>
</div>
</div></div></div>
</div>
</div>
   <div class="container">
      	<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-add">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Add Supplier</a>
								
							</div>
						</div>
					</div>	</div></div></div>
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form action="addsupplier" method="POST" style="display: block;">
									 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<div class="form-group">
										<input type="text" name="sname" class="form-control" placeholder="Supplier Name" />
									</div>
									<div class="form-group">
										<input type="text" name="semail" class="form-control" placeholder="Supplier Email" />
									</div>
									<div class="form-group">
										<input type="text" name="scontact" class="form-control" placeholder=" Supplier Contact" />
									</div>
									<div class="form-group">
										<input type="text" name="saddress" class="form-control" placeholder="Supplier Address" />
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="addSupplierBut" class="form-control btn btn-add" value="Add" />
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
</html> --%>