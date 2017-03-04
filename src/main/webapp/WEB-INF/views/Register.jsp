<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
        <form:form action="Register" method="post" commandName="UserDetails">
           <form>
           <div align="center">
    <div class="form-group">
      <label class="col-md-4 control-label">USER ID:</label>
      <div class="col-md-4" >
      <input type="text" class="form-control" name="userId" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label">Name:</label>
      <div class="col-md-4" >
      <input type="text" class="form-control" name="name" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category Name">USER NAME:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="userName" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">PASSWORD:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="password" >
      </div> <br/> <br/> <br/>
    </div>
     <div class="form-group">
      <label class="col-md-4 control-label" for="Description">MOBILE:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="mobile" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">EMAIL:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="email" >
      </div> <br/> <br/> <br/>
    </div>
    
   <button type="submit" class="btn btn-danger">Registration</button>
  </div>
 </form>
</form:form>
</body>
</html>