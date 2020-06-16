
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center;margin-top: 10%;">
<h1>Inserisci due numeri:</h1>
<form action="operazioni">

<input type="hidden" id="operazione" name="operazione" value="${operazione}">
<input type="number" id="n1" name="n1" placeholder="n1" step="0.01"> 

<c:set var="op" value="${operazione}"/>

<c:if test="${op == 4}"> 
<input type="number" id="n2" name="n2" placeholder="n2" step="0.01" min="1">
</c:if>

<c:if test="${op != 4}"> 
<input type="number" id="n2" name="n2" placeholder="n2" step="0.01">
</c:if>

<input type="submit" value="Calcola">
</form>
</body>
</html>