<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
 .quiz-text {
            text-align: center;
           
            
            color: black;
        }
   button {
   height:40px;
   width:200px;
   }     
</style>
<title>Onquizyyyy</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/">OnQuizyyyy</a>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="${pageContext.request.contextPath}/">Home</a>
      <a href="studentregisteration" class="nav-item nav-link active" type="button">Student Registration</a>
    </div>
  </div>
</nav>
 <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Registration Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="${pageContext.request.contextPath}/register-student" method="POST">
                <div class="form-group">
                    <input type="text" class="form-control" name="sname" placeholder="Enter Name of the Student" required="required">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" name="semail" placeholder="Enter Valid Email" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="sclass" placeholder="Enter Class i.e:1 st year/2 nd year/3 rd year" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="sage" placeholder="Enter Age" required="required">
                </div>
             <div class="form-group">
                    <input type="password" class="form-control" name="spassword" placeholder="Create Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </div>
            </form>
      </div>
    </div>
  </div>
</div>




<div class="quiz-text">
<br><br><br><br><br><h1>Welcome to the Quiz World</h1>
        <h3>Start a quiz and increase your knowledge!</h3>
<h3>Select Your Role and Continue Logging In.....</h3><br>
<p>
  <a href="adminDashboard" class="btn btn-light" type="button">
    Admin
  </a>
  <a href="teacherDashboard" class="btn btn-light" type="button">
    Teacher
  </a>
  <a href="studentDashboard" class="btn btn-light" type="button">
    Student
  </a>
</p>
</div>
</body>
</html>