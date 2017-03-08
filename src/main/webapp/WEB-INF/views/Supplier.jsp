<%@ page language="java" contentType="text/html;* charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Supplier</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"> 
body {background-image: url("resources/supplier.jpg"); width:"100%"; height:"50%";} 
 </style>
 <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr{background-color: #f2f2f2;
   text-align:center;}

th {
    background-color: #4CAF50;
    color: white;/*
   }
</style>
</head>
<body>
<img src="resources/logo.jpg"  width="200" height="110">
<nav class="navbar navbar-default navbar-static" >
<div class="navbar-header">
<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#b-menu-2">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="https://www.script-tutorials.com/responsive-website-using-bootstrap/">BEAUTY ESSENTIAL WEBSITE</a>
</div>
<!-- submenu elements for #b-menu-2 -->
<div class="collapse navbar-collapse" id="b-menu-2">
<ul class="nav navbar-nav" >
<li class="active"><a href="adminhome.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>

<li><a href="addproduct"><span class="glyphicon glyphicon-search"></span>Products</a></li>
<li><a href="AddSupplier"><span class="glyphicon glyphicon-user"></span> Supplier</a></li>
<li><a href="Category"><span class="glyphicon glyphicon-list"></span> Category</a></li>
</ul>
</div><!-- /.nav-collapse -->
</nav>
<center><h2>Add Supplier</h2></center>
<c:set var="p" scope="session" value="${spedit}"/>
<c:choose>
<c:when test="${p==0}">

        <form:form action="AddSupplier" method="post" commandName="addSupp">
           <form>
           <div align="center">
     <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier ID">Supplier ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="sid" value="${supData.sid}" />
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier Name">Supplier Name:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="sname" value="${supData.sname}" />
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier Description">Description:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="sdescription" value="${supData.sdescription}" />
    </div><br/> <br/> <br/>
    </div>
    <br/> <br/> <br/>
    <button type="submit" class="btn btn-danger">Add Supplier</button>
    <br/> <br/> <br/> <br/>
  </div>
  </form>
  </form:form>
  </c:when>
  <c:otherwise>
  <form:form action="editsupplier" method="post" commandName="addSupp">
           <form>
           <div align="center">
     <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier ID">Supplier ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="sid" value="${supData.sid}" />
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier Name">Supplier Name:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="sname" value="${supData.sname}" />
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Supplier Description">Description:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="sdescription" value="${supData.sdescription}" />
    </div><br/> <br/> <br/>
    </div>
    <br/> <br/> <br/>
    <button type="submit" class="btn btn-info">Edit Supplier</button>
    <br/> <br/> <br/> <br/>
  </div>
  </form>
  </form:form>
  </c:otherwise>
  </c:choose>
  
<h2 style="background-color:rgb(255, 255, 255)"><center><bold> Supplier List </bold></center></h2>
<table class="table table-bordered">
  <thead>
   <tr>
    <th><center>Supplier Id</center></th>
    <th><center>Supplier Name</center></th>
    <th><center>Supplier Description</center></th>
    </tr>
  </thead>
  <c:forEach items="${suplist}" var="supl">
  <tr>
    <td><c:out value="${supl.sid}"/></td>
    <td><c:out value="${supl.sname}"/></td>
    <td><c:out value="${supl.sdescription}"/></td>
    <td><a href="EditS?supid=${supl.sid}">Edit</a></td>
    <td><a href="delsup?suid=${supl.sid }">Delete</a></td>
  </tr>
  </c:forEach>
</table>
  
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>