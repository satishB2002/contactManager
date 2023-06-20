<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<h1>Contact  List</h1>
	<h3 href="new"> New Contact</h3>
	<table>
	<tr>
	<th>No<th/>
	<th>Name<th/>
	<th>Email<th/>
	<th>Address <th/>
	<th>Phone<th/>
	<th>Action<th/>
	</tr>
	<c:forEach items ="${listContact }"  var="Contact" varStatus="status">
	<tr>
	<td>${status.index + 1}</td>
	<td>${contact.name }</td>
	<td>${status.email}</td>
	<td>${status.address}</td>
	<td>${status.phone}</td>
	
	<td>
	<a href="edit?id"=${contact.id}>Edit</a>
	&nbsp;nbsp;
	<a href="delete?id"=${contact.id}>Delete</a>
	</td>
	
	
	
	</tr>
	</c:forEach>
	
	</table>
	</div>
	
</body>
</html>