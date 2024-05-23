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
<th>BatchID</th>
<th>TYpe</th>
<th>Time</th>
</tr>
<core:forEach var="batch" items="${sessionScope.batches }">
<tr><td><core:out value="${batch.getBid() }"></core:out></td>
<td><core:out value="${batch.getTypeofbatch() }"></core:out></td>
<td><core:out value="${batch.getTime() }"></core:out></td></tr></core:forEach>
</table>

</body>
</html>