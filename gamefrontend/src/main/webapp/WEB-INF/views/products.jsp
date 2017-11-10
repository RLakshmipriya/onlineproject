<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<%@page isELIgnored="false" %>
 


<body>

<%@include file="navbar.jsp"%>
	<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover(); 
});
</script>

	<div class="container"> 
 
  <div class="row">
  <c:forEach items="${products}" var="p">  
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">${p.pname}</div>
        <div class="panel-body"><a href="product?id=${p.pid}"><img src="./resources/image/${p.pimg}" class="img-responsive" style="width:100%" ></a></div>
        <div class="panel-footer">Price:${p.pprice}
			<a href="product?id=${p.pid}"  role="button"  class="btn btn-warning btn-sm btn-block">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
								</a></div>
      </div>
    </div></c:forEach></div></div>

<%@include file="footer.jsp" %>

</body>
</html>