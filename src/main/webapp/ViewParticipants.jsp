<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>Participant Id</th>
<th>Fname</th>
<th>Age</th>
<th>Phone number</th>
<th>Batch ID</th>
<core:forEach var="participant" items="${sessionScope.participants }">
<tr><td><core:out value="${participant.getPid() }"></core:out></td>
<td><core:out value="${participant.getFname() }"></core:out></td>
<td><core:out value="${participant.getAge() }"></core:out></td>
<td><core:out value="${participant.getPhonenumber() }"></core:out></td>
<td><core:out value="${participant.getBid() }"></core:out></td></tr></core:forEach>
</table>
</body>
</html>