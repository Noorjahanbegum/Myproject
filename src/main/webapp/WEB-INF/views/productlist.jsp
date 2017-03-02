<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
  <form:form action="listproduct" method="post" commandName="product"  enctype="multipart/form-data">

<table class="table table-bordered">
           <center> <caption><h2>List of products</h2></caption></center>
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>mfg</th>
                <th>image</th>
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
				<td><a href="info?pid=${p.id}">More Info</a></td>
                </c:forEach>
        </table>
        
        </form:form>
        <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>