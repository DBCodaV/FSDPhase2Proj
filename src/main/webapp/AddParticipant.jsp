<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Add Participant details</h2>
<form action="ParticipantController" method = "post">
<label>FIrst name</label>
<input type="text" name="fname"/><br>
<label>Age</label>
<input type="number" name="age"/><br>
<label>Phone Number</label>
<input type="text" name="phonenumber"/><br>
<label>Batch</label>
<select name="bid">
<core:forEach var="bid" items="${sessionScope.batches}">
	<option value="<core:out value="${bid.getBid()}"></core:out>"> <core:out value="${bid.getTypeofbatch()}"></core:out> 
	- 
	<core:out value="${bid.getTime()}"></core:out></option>
</core:forEach>
</select>
<input type="submit" value="Add Batch"/> 
<input type="reset" value="reset"/>
</form>

</body>
</html>