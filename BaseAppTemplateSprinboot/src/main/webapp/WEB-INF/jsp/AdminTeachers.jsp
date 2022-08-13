<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>  
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>AdminTeachers</title>
<style>
.quiz-over {
            text-align: center;
            position: absolute;
            top: 25%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
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
<div class="quiz-over">
<button type="button" class="btn btn-light" data-toggle="modal" data-target="#addteacherModal">+ Add Teachers</button><br><br>
<a href="viewteachers" type="button" class="btn btn-light">View Teachers</a><br><br><br>
</div>
<div class="modal fade" id="addteacherModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add Teachers</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <fm:form method="post" action="save" modelAttribute="t">   
       <div class="form-group">
       <fm:input path="teachername" class="form-control" placeholder="Enter Name of Teacher" required="required"  />
                </div>
                <div class="form-group">
                <fm:input path="email" class="form-control" placeholder="Enter Email" required="required"  />
                </div>
                <div class="form-group">
                <fm:input path="password" class="form-control" placeholder="Enter Password" required="required"  />
                 </div>
                <div class="form-group">
                <fm:input path="phonenumber" class="form-control" placeholder="Enter PhoneNumber" required="required"  />
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block" value="save">Confirm</button>
                </div>
             </fm:form>  
      </div>
    </div>
  </div>
</div>
</body>
</html>