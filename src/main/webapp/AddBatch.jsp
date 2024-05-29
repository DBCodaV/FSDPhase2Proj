<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Batch</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<h2>Add Batch details</h2>
<form action="BatchController" method = "post">
<Label>Type of Batch</Label>
<select name="typeofbatch">
<option value="">Select type</option>
<option value="Morning">Morning</option>
<option value="Evening">Evening</option></select>
<br>
<label>Time</label>
<select name="time">
<%
for (int i=1, j=2;i<=12 && j<13;i++,j++){
	%>
	<option value="<%=i%>-<%=j%>"><%=i%>-<%=j%></option>
	<%
}
%></select>
<br>
<input type="submit" value="Add Batch"/>
<br>
<input type="reset" value="Reset Form"/>
</form>
<a href="index.jsp">Home</a>
</body>
</html>