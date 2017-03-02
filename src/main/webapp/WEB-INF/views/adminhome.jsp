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


<li><a href="addproduct"><span class="glyphicon glyphicon-search"></span> Products</a></li>

<li><a href="Category"><span class="glyphicon glyphicon-share"></span> Category</a></li>

<li><a href="AddSupplier"><span class="glyphicon glyphicon-list"></span> Supplier</a></li>

</ul>
<ul class="nav navbar-nav navbar-right">
<li data-toggle="modal" data-target="#my-modal-box"><a href="#"><span class="glyphicon glyphicon-share"></span> Share popup</a></li>
</ul>
</div><!-- /.nav-collapse -->
</nav>
</body>
</html>