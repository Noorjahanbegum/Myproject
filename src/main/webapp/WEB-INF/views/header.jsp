<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="Stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<scrpit src="http://ajax.googleapis.com/ajax/libs/jquery/3.11/jquery/3.1.1/jquery/min.js"></script>
<scrpit src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
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
<li>Welcome <c:out value="${UserName }"></c:out></li>
<li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>

<li><a href="listproduct"><span class="glyphicon glyphicon-search"></span>View Products</a></li>

<li><a href="Register"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
<li><a href="contactus"><span class="glyphicon glyphicon-envelope"></span> Contact us</a></li>
<li><a href="about"><span class="glyphicon glyphicon-exclamation-sign"></span> About us</a></li>
<c:choose>
<c:when test="${UserLoggedIn }">
<li><a href="perform_logout"><span class="glyphicon glyphicon-user"></span> Log out</a></li>
</c:when>
<c:otherwise>
<li><a href="Login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
</c:otherwise>
</c:choose>
</ul>
</div><!-- /.nav-collapse -->
</nav>
</body>
</html>