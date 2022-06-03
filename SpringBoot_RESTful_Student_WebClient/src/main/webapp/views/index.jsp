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
<h1 style="color: navy;">Student Record App </h1>

<h3>Add Student</h3>
${result}

<form action="addStudent">
Id:: <input type="number" name="id" required/> <br> <br>
Name:: <input type="text" name="name" required/><br> <br>
Roll No:: <input type="number" name="roll" required/><br> <br>
Course:: <input type="text" name="course" required/><br> <br>

<button>AddStudent</button>
</form>

<hr>
<h3>Student Name Like Print</h3>
<form action="studentlike">
Name:: <input type="text" name="name"  required/> <hr>
<button>Search</button>

</form>

<hr> 
<h3>Delete Student</h3>

${delete}>

<form action="deleteStudent">

Name:: <input type="text" name="name"  required/> <hr>

<button>Delete</button>

</form>


<h3>Update Student By Id</h3>
   
  
   
   


<form action="updateStudent">
 <hr>
 ${update}
 <hr>


 ID::::<select name="sid">
 <c:forEach items="${id}" var="i">
 
   <option>${i}</option>
   
   </c:forEach>
   
   </select>


Id:: <input type="number" name="id" required/> <br> <br>
Name:: <input type="text" name="name" required/><br> <br>
Roll No:: <input type="number" name="roll" required/><br> <br>
Course:: <input type="text" name="course" required/><br> <br>

<button>Update Student</button>



</form>












</body>
</html>