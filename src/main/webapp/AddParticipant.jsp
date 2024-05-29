<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Participant</title>
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

	<h2 class="text-center display-4">Add Participant details</h2>
	<div class="container-sm">
		<form action="ParticipantController" method="post">
			<div class="mb-3">
				<label class="form-label">First name</label> <input type="text"
					class="form-control" name="fname" /><br>
			</div>
			<div class="mb-3">
				<label class="form-label">Age</label> <input type="number"
					class="form-control" name="age" /><br>
			</div>
			<div class="mb-3">
				<label class="form-label">Phone Number</label> <input type="text"
					class="form-control" name="phonenumber" /><br>
			</div>
			<div class="mb-3">
				<label class="form-label">Batch</label> <select name="bid"
					class="form-select">
					<core:forEach var="bid" items="${sessionScope.batches}">
						<option value="<core:out value="${bid.getBid()}"></core:out>">
							<core:out value="${bid.getTypeofbatch()}"></core:out> -
							<core:out value="${bid.getTime()}"></core:out></option>
					</core:forEach>
				</select>
			</div>
			<br> <input type="submit" value="Add Participant"
				class="btn btn-primary" /> <input type="reset" value="reset"
				class="btn btn-secondary" />
		</form>
		<a href="index.jsp">Home</a>
	</div>
</body>
</html>
