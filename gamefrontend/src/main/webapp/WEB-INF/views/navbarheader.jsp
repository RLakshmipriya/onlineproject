<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<c:choose>

 <c:when test="${sessionScope['email'] eq null}">
 <%@include file="loginnavbar.jsp"%>
 </c:when>
 
 <c:when test="${sessionScope['email'] == 'admin@example.com'}">
 <%@include file="suppliernavbar.jsp"%>
 </c:when>
 
 <c:when test="${sessionScope['email'] ne null}">
  <%@include file="logoutnavbar.jsp"%>
 </c:when>

</c:choose>