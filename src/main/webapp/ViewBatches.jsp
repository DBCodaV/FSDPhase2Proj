<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Batches</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<h2 class="text-center display-4">View Batches</h2>
	<div class="container-md">
		<table class="table table-striped table-bordered">
			<tr>
				<th>BatchID</th>
				<th>Type</th>
				<th>Time</th>
			</tr>
			<core:forEach var="batch" items="${sessionScope.batches }">
				<tr>
					<td><core:out value="${batch.getBid() }"></core:out></td>
					<td><core:out value="${batch.getTypeofbatch() }"></core:out></td>
					<td><core:out value="${batch.getTime() }"></core:out></td>
				</tr>
			</core:forEach>
		</table>
		<a href="index.jsp">Home</a>
	</div>
</body>
</html>