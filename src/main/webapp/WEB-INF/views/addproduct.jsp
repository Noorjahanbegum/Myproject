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
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>AddProduct</title>
<style type="text/css"> 
body {background-image: url("resources/pro.jpg"); width:100%;} 
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
<fieldset>
<legend>ADDPRODUCT FORM</legend>
    <div align="center">
    <c:url value="/resources/.jpg" var="url"></c:url>
    <c:set var="prod" scope="session" value="${ed}"/>
    <c:choose>
    <c:when test="${ed==0}">
        <form:form action="addproduct" method="post" commandName="addProd"  enctype="multipart/form-data">
            
                 <div class="form-group">
                      <label class="col-md-4 control-label" >id</label>
                      <div class="col-md-4">
                       <input type="text" class="form-control" name="id" value="${pData.id}">
                       </div>
</div><br><br>
               <div class="form-group">
  <label class="col-md-4 control-label">PRODUCT NAME</label>  
  <div class="col-md-4">
  <input type="text" class="form-control" name="name" value="${pData.name}">
      </div> <br/> <br/> <br/>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Quantity">Quantity:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="quantity" value="${pData.quantity}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Price">Price:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="price" value="${pData.price}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Manufacturing Date">Manufacturing Date:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="mfg" value="${pData.mfg}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Name">Description:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="description" value="${pData.description}">
      </div> <br/> <br/> <br/>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Image">Product Image</label>
       <div class="col-md-4">
      <input type="file" class="form-control" name="image" value="${pData.image}">
      </div> <br/> <br/> <br/>
    </div>
    
   <button type="submit" class="btn btn-success">  Add Product  </button>
  </div>
</form:form>
</c:when>
<c:otherwise>
<form:form action="editP" method="post" commandName="addProd" enctype="multipart/form-data">
     <form>
     <div align="center">
     <div class="form-group">
      <label class="col-md-4 control-label" for="Product ID">Product ID:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="id" value="${pData.id}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Name">Product Name:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="name" value="${pData.name}">
      </div> <br/> <br/> <br/>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Quantity">Quantity:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="quantity" value="${pData.quantity}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Price">Price:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="price" value="${pData.price}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Manufacturing Date">Manufacturing Date:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="mfg" value="${pData.mfg}">
      </div> <br/> <br/> <br/>
    </div>
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Name">Description:</label>
       <div class="col-md-4">
      <input type="text" class="form-control" name="description" value="${pData.description}">
      </div> <br/> <br/> <br/>
    </div>
    
    <div class="form-group">
      <label class="col-md-4 control-label" for="Product Image">Product Image</label>
       <div class="col-md-4">
      <input type="file" class="form-control" name="image" value="${pData.image}">
      </div> <br/> <br/> <br/>
    </div>
    
   <button type="submit" class="btn btn-success">  Edit Product  </button>
  </div>
  </form>
</form:form>
</c:otherwise>
</c:choose>

<br/> <br/> <br/>
<table class="table table-bordered">
            <caption><h2>List of products</h2></caption>
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>mfg</th>
                <th>image</th>
                <th>edit/delete</th>
            </tr>
            </thead>
            <c:forEach  items="${pro}" var="p">
                <tr>
                    <td><c:out value="${p.id}" /></td>
                    <td><c:out value="${p.name}" /></td>
                    <td><c:out value="${p.description}" /></td>
                    <td><c:out value="${p.price}" /></td>
                    <td><c:out value="${p.quantity}" /></td>
                    <td><c:out value="${p.mfg}" /></td>
                    <td>
				<c:url var="src" value="/resources/${p.id }.jpg"></c:url>
				<img src="${src }" width="50" height="50"/>
				<td><a href="editProduct?proid=${p.id}">edit</a></td>
                   <td><a href="delpro?prid=${p.id }">delete</a></td>
                </c:forEach>
        </table>

</div>
</fieldset>

            <div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
      <p class="navbar-text pull-left">© 2014 - Site Built By Mr. M.
           <a href="http://tinyurl.com/tbvalid" target="_blank" >HTML 5 Validation</a>
      </p>
      
      <a href="http://youtu.be/zJahlKPCL9g" class="navbar-btn btn-danger btn pull-right">
      <span class="glyphicon glyphicon-star"></span>  Subscribe on YouTube</a>
    </div>
</body>
</html>