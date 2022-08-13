<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Teachers</title>
<style>
.quiz-over {
            text-align: center;
            position: absolute;
            top: 25%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: black;
        }
        .table-display{
        position:absolute;
        top:30%;
        color: white;
        }
        th,td{
        width:500px;
        }
</style>
<jsp:include page="adminNavbar.jsp"></jsp:include>
</head>
<body>
<div class="quiz-over"><h1>List of Teachers are Here......</h1></div>
<div class="table-display">
<table border="1" style="width:100%;color:black">  
<tr><th>Id</th><th>Name</th><th>Email</th>  
<th>Password</th><th>Phone Number</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach var="t" items="${empList}">
<tr><td>${t.getTeacherid()}</td><td>${t.getTeachername()}</td><td>${t.getEmail()}</td>  
<td>${t.getPassword()}</td><td>${t.getPhonenumber()}</td>  
<td><a href="editteacherform/${t.getTeacherid()}">Edit</a></td>  
<td><a href="deleteteacher/${t.getTeacherid()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
</div>
</body>
</html>