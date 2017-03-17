<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Single Product Info</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="Stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<scrpit src="http://ajax.googleapis.com/ajax/libs/jquery/3.11/jquery/3.1.1/jquery/min.js"></script>
<scrpit src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<c:url value="/resources/.jpg" var="url"></c:url>
<c:forEach items="${addProd}" var="prol">
 <div class="container-fluid text-center"> 
 <div class="row content">
  
    <div class="col-sm-4">
     <center><h2>Information of <c:out value="${prol.name}"/></h2></center>
  </div>
  </div>
   
    <div class="col-sm-4" >
  <br><c:url var="src" value="/resources/${prol.id}.jpg"></c:url>
  <img src="${src }" width="250" height="200"/>
   </div>
          <h2>
          <div class="col-sm-6 text-left"> 
    <br><c:out value="${prol.name}"/><br>
    
    <br><c:out value="${prol.price}"/><br>
    
    <br><c:out value="${prol.description}"/><br></h2>
   
    </div>
    
   
</c:forEach><br><br><br><br>
<center><button type="submit" class="btn btn-info">  Add to Cart  </button></center>
 <br> <br> <br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>