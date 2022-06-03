<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: red;">Data</h1>
<hr> <hr>

<c:if test="${data==null}">
<h4 style="color:brown;">No Data Found</h4>
</c:if>


<c:if test="${data!=null}">
<c:forEach items="${data}" var="d">

id:<c:out value="${d.id}"></c:out> <br>
Name:<c:out value="${d.name}"></c:out> <br>
RollNo::<c:out value="${d.roll}"></c:out> <br>
Course:<c:out value="${d.course}"></c:out> <br>
<hr>

</c:forEach>
</c:if>

</body>
</html>