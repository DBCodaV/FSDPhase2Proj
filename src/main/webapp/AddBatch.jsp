<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Batch</title>
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

	<h2 class="text-center display-4">Add Batch details</h2>
	<div class="container-sm">
		<form action="BatchController" method="post">
			<div class="mb-3">
				<label class="form-label">Type of Batch</label> <select
					name="typeofbatch" class="form-select">
					<option value="">Select type</option>
					<option value="Morning">Morning</option>
					<option value="Evening">Evening</option>
				</select>
			</div>
			<br>
			<div class="mb-3">
				<label class="form-label">Time</label> <select name="time"
					class="form-select">
					<%
					for (int i = 1, j = 2; i <= 12 && j < 13; i++, j++) {
					%>
					<option value="<%=i%>-<%=j%>"><%=i%>-<%=j%></option>
					<%
}
%>
				</select>
			</div>
			<br>
			<div class="d-grid gap-2 d-md-block">
				<input type="submit" value="Add Batch" class="btn btn-primary" /> <input
					type="reset" value="Reset Form" class="btn btn-secondary" />
			</div>
		</form>
		<a href="index.jsp">Home</a>
	</div>
</body>
</html>
