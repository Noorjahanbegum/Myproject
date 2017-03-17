<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 60%;
      margin: auto;
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

<li><a href="addproduct"><span class="glyphicon glyphicon-search"></span>Products</a></li>
<li><a href="AddSupplier"><span class="glyphicon glyphicon-user"></span> Supplier</a></li>
<li><a href="Category"><span class="glyphicon glyphicon-list"></span> Category</a></li>
<li><a href="Login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
<a class="navbar-brand"><li class="active">Welcome <c:out value="${UserName}"/></li></a>
<li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
</ul>
</div><!-- /.nav-collapse -->
</nav>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/image8.jpg"  width="60%" height="345">
      </div>

      <div class="item ">
        <img src="resources/image9.jpg" width="70%" height="345">
      </div>
    
      <div class="item">
        <img src="resources/image10.jpg"  width="60%" height="345">
      </div>

      <div class="item">
        <img src="resources/image7.jpg"  width="60%" height="345">
      </div>
    </div>
  <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>		
</body>
</html>