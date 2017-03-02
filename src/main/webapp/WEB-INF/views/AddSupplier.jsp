<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css"> 
body {background-image:url("resources/.jpg"); width:100%;} 
 </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div align="center">
 <c:set var="supm" scope="session" value="${editing}"/>
    <c:choose>
    <c:when test="${supm==0}">
        <form:form action="AddSupplier" method="post" commandName="supplier">             
 <div align="left"><legend>Add Supplier Form</legend></div>
                
               <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Id:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="id" value="${supData.id}">
      </div> <br/> <br/> <br/>
    </div>
               <<div class="form-group">
      <label class="col-md-4 control-label" for="Description">Supplier Name:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="name" value="${supData.name}">
      </div> <br/> <br/> <br/>
    </div>
                <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Mobile:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="mpn" value="${supData.mpn}">
      </div> <br/> <br/> <br/>
    </div>
              <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Address:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="adr" value="${supData.adr}">
      </div> <br/> <br/> <br/>
    </div>
         <br>   <br>   
                    <div align="center"><input type="submit" value="addsupplier" class="btn btn-info" /></div>
                 </form>
</form:form>
</c:when>
<c:otherwise>
 <form:form action="editSupplier" method="post" commandName="supplier">
           <form>
           <div align="center">
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category ID">Supplier ID:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cid" value="${supData.name}" >
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Category Name">Supplier Name:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="cname" value="${supData.name}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Mobile:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="mpn" value="${supData.mpn}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Description">Address:</label>
      <div class="col-md-4">
      <input type="text" class="form-control" name="adr" value="${supData.adr}">
      </div> <br/> <br/> <br/>
    </div>
    <br/> <br/> <br/> <br/>
   <button type="submit" class="btn btn-success">Edit Category</button>
  </div>
  </form>
</form:form>
</c:otherwise>
</c:choose>

<br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/> <br/>

   
  <table class="table table-bordered">
            <caption><h2>List of supplier</h2></caption>
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>mobile</th>
                <th>address</th>
            </tr>
            </thead>
            <c:forEach  items="${su}" var="user">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.mpn}" /></td>
                    <td><c:out value="${user.adr}" /></td>
                   <td><a href="edit?supid=${user.id}">edit</a></td>
     <td><a href="delcat?supid=${user.id }">delete</a></td>
                                </tr>
  </c:forEach>
</table>	<br><br>
   
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