<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- 	<form action="register" method="POST">
		<input type="text" name="txtName" placeholder=" Name" /><br>
		<input type="email" name="txtEmail" placeholder="email@example.com" /><br>
		<input type="tel" name="txtContact" placeholder="Mobile No." /><br>
		<input type="text" name="txtPlace" placeholder="Place" /><br>
		<input type="submit" name="butSubmit" value="register" />
	</form> --%>
	<spring:form action="register" method="POST">
	    Name : <spring:input type="text" path="name"/> <br>
		Email : <spring:input type="email" path="email"/><br>
		Contact : <spring:input type="tel" path="contact"/><br>
		Place : <spring:input type="text" path="place"/>
		<input type="submit" name="butSubmit" value="register" />		
	</spring:form>
</body>
</html>