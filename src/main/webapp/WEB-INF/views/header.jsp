<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="Stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<scrpit src="http://ajax.googleapis.com/ajax/libs/jquery/3.11/jquery/3.1.1/jquery/min.js"></script>
<scrpit src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.navbar-default .navbar-nav>li>a {
    color: #eee;
}
.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.active>a:hover, .navbar-default .navbar-nav>.active>a:focus {
    color: yellow;
    background-color: #35b2b2;
}
.nav-bar-sachmem{
    background-color:#35b2b2;
    color:white;
}
.navbar-brand
{
color: yellow;
    background-color: #35b2b2;
}
</style>
</head>

<body>


<nav class="navbar navbar-default nav-bar-sachmem">
<div class="container-fluid">
<div class="navbar-header">
<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#b-menu-2">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<img src="resources/logo1.jpg"  width="90" height="70">

</div>
<!-- submenu elements for #b-menu-2 -->



<div class="collapse navbar-collapse" id="b-menu-2">
<ul class="nav navbar-nav" >
<li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>

<li><a href="listproduct"><span class="glyphicon glyphicon-search"></span>View Products</a></li>

<li><a href="Register"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
<li><a href="contactus"><span class="glyphicon glyphicon-envelope"></span> Contact us</a></li>

<li><a href="Login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
<a class="navbar-brand"><li class="active">Welcome <c:out value="${UserName}"/></li></a>
<li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
<li><a href="showCart"><img src="http://www.animatedimages.org/data/media/1633/animated-shopping-cart-image-0001.gif" width="40" height="25" align="right"><c:out value="${cartadd }"/></a></li>
<c:choose>
<c:when test="${UserLoggedIn}">
</c:when>
<c:otherwise>

</c:otherwise>
</c:choose>
</ul>
</div><!-- /.nav-collapse -->
</nav>
</body>
</html>