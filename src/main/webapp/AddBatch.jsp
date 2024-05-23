<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><h2>Add Batch details</h2>
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
<input type="submit" value="Add Batch"/> 
<input type="reset" value="reset"/>
</form>

</body>
</html>