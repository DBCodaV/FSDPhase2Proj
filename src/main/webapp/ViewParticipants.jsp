<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<table border="1">
<tr>
<th>Participant ID</th>
<th>First Name</th>
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
<a href="index.jsp">Home</a>
</body>
</html>