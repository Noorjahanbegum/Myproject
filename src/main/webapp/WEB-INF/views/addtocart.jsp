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
  
<table class="table table-bordered">
           <center> <caption><h2>List of products</h2></caption></center>
            <thead>
            <tr>
              
                <th>Name</th>
               <th>Price</th>
               <th>Quantity</th>
                <th>cattotal</th>
            </tr>
            </thead>
            <c:forEach  items="${cl}" var="cls">
                <tr>
              
                    <td><c:out value="${cls.productname}"/></td>
                    <td><c:out value="${cls.productprice}"/></td>
                    <td><c:out value="${cls.quantity}"/></td>
                    <td><c:out value="${cls.cattotal}"/></td>
                    <td>
				
				
                </c:forEach>
        </table>
        <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>