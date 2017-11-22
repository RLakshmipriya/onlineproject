<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
 <%@include file="header.jsp" %>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>


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
        <div class="panel-body"><a href="prodesc?id=${p.pid}"><img src="./resources/image/${p.pimg}" class="img-responsive" style="width:100%" ></a></div>
        <div class="panel-footer">Price:${p.pprice}
			<a href="productdesc?id=${p.pid}"  role="button"  class="btn btn-warning btn-sm btn-block">view Product Description<span class="glyphicon glyphicon-menu-right"><span class="glyphicon glyphicon-menu-right">
				</span>	</span>			</a></div>
      </div>
    </div></c:forEach></div></div>
    <%@include file="footer.jsp" %>

</body>
</html>