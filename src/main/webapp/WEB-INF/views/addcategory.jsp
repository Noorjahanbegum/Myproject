<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Category</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"> 
body {background-image:url("resources/cat.jpg"); width:100%;} 
 </style>
 <style>
 
    .heading { color: #FF5733; }
  .list { color: #FF5733; }
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr{background-color: #D7BDE2  }

th {
    background-color: #FA8072;
    color: white;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <legend><h2 class="heading"> Add New Category </h2></legend>
    <c:set var="pst" scope="session" value="${editing}"/>
    <c:choose>
    <c:when test="${pst==0}">
        <form:form action="Category" method="post" commandName="addCat">
           <form>
           <div align="center">
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category ID"  class="list">Category ID:</label>
      <div class="col-md-4" >
      <input type="text" class="form-control" name="cid" value="${catData.cid}" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category Name">Category Name:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cname" value="${catData.cname}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Description:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="catdes" value="${catData.catdes}">
      </div> <br/> <br/> <br/>
    </div>
    <br/> <br/> <br/> <br/>
   <button type="submit" class="btn btn-success">Add Category</button>
  </div>
  </form>
</form:form>
</c:when>
<c:otherwise>
 <form:form action="editCategory" method="post" commandName="addCat">
           <form>
           <div align="center">
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category ID">Category ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cid" value="${catData.cid}" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category Name">Category Name:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cname" value="${catData.cname}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Description:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="catdes" value="${catData.catdes}">
      </div>
    </div>
   
   <button type="submit" class="btn btn-success">Edit Category</button>
  </div>
  </form>
</form:form>
</c:otherwise>
</c:choose>

<br/> <br/> <br/> 
<h2 style="background-color:RGB(240, 128, 128)"><center><bold> Category List </bold></center></h2>
<table class="table table-bordered">
  <thead>
   <tr style="background-color:rgb(100, 105, 125)">
    <th><center>Category Id</center></th>
    <th><center>Category Name</center></th>
    <th><center>Category Description</center></th>
    </tr>
  </thead>
  <c:forEach items="${catlist}" var="empl">
  <tr>
    <td><c:out value="${empl.cid}"/></td>
    <td><c:out value="${empl.cname}"/></td>
    <td><c:out value="${empl.catdes}"/></td>
     <td><a href="edit?catid=${empl.cid}">edit</a></td>
     <td><a href="delcat?catid=${empl.cid }">delete</a></td>
  </tr>
  </c:forEach>
</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>