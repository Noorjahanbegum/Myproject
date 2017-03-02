<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

      <legend>Register</legend>
    
<div align="center">
        <form:form action="regist" method="post" commandName="register">
              <div class="form-group">
  <label class="col-md-4 control-label" for="product_name">USER NAME</label>  
  <div class="col-md-4">
  <input path="name" placeholder="ID" class="form-control input-md" required="" type="text">
    <p class="help-block">Username can contain any letters or numbers, without spaces</p>
  </div>
</div><br><br><br><br>
               
                <div class="form-group">
  <label class="col-md-4 control-label" for="email"> EMAIL</label>  
  <div class="col-md-4">
  <input path="email" placeholder="NAME" class="form-control input-md" required="" type="text">
   <p class="help-block">Please provide your E-mail</p> 
  </div>
</div><br><br><br><br>
  <div class="form-group">
  <label class="col-md-4 control-label" >PASSWORD</label>  
  <div class="col-md-4">
  <input path="password" class="form-control input-md" required="" type="text">
     <p class="help-block">Password should be at least 4 characters</p>
  </div>
</div><br><br><br><br>
<div class="form-group">
  <label class="col-md-4 control-label"> PASSWORD (Confirm)</label>  
  <div class="col-md-4">
  <input path="conpassword" class="form-control input-md" required="" type="text">
    <p class="help-block">Please confirm password</p>
  </div>
</div>
              <br><hr>
              <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Register</button>
      </div>
    </div>
                
           
        </form:form>
        
    </div>
            <div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
      <p class="navbar-text pull-left">© 2014 - Site Built By Mr. M.
           <a href="http://tinyurl.com/tbvalid" target="_blank" >HTML 5 Validation</a>
      </p>
      
      <a href="http://youtu.be/zJahlKPCL9g" class="navbar-btn btn-danger btn pull-right">
      <span class="glyphicon glyphicon-star"></span>  Subscribe on YouTube</a>
    </div>
    
    
  </div>
</body>
</html>