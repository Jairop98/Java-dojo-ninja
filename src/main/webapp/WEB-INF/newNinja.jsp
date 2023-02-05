<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create New Ninja</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<form:form mathod="POST" action="/ninja/createNinja" modelAttribute="ninja">
	<p>
	<form:label path="dojo">Name:</form:label>
	<form:errors path="dojo"/>
	<form:select path="dojo">
	<c:forEach items="${allDojos}" var="dojo">
	<option value="${dojo.id}">${dojo.name}</option>
	</c:forEach>
	</form:select>
	</p>
	<p>
	<form:label path="firstName">First Name:</form:label>
	<form:errors path="firstName"/>
	<form:input path="firstName"/>
	</p>
	<p>
	<form:label path="LastName">Last Name:</form:label>
	<form:errors path="LastName"/>
	<form:input path="LastName"/>
	</p>
	<p>
	<form:label path="age">Age:</form:label>
	<form:errors path="age"/>
	<form:input path="age"/>
	</p>
	<button>Create Ninja</button>
	</form:form>
</body>
</html>

