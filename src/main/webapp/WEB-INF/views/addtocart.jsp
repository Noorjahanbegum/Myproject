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
</head>
<body>
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
            <c:forEach  items="${cl}" var="cls">
                <tr>
                 <td><c:out value="${cls.cartid}"/></td>
                    <td><c:out value="${cls.cartuser}"/></td>
                   <td><c:out value="${cls.Productid }" /></td>
                    <td><c:out value="${cls.productname}"/></td>
                    <td><c:out value="${cls.productprice}"/></td>
                    <td><c:out value="${cls.quantity}"/></td>
                    <td><c:out value="${cls.cattotal}"/></td>
                    <td>
				<c:url var="src" value="/resources/${cls.Productid }.jpg"></c:url>
				<img src="${src }" width="50" height="50"/>
				
                </c:forEach>
        </table>
     
</body>
</html>