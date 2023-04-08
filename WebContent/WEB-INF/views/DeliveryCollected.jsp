<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="header.jsp" />
 <c:forEach items="${hList}" var="key">
<c:if test="${key.getDeliveryStatus()=='no'}">
<div class="card">
    <div class="card-header">
<span class="text-success fw-bold">     Seeker Name: ${key.getFname() }  ${key.getLname() }</span>    
    </div>
   
 <form method="POST" action="deliverToSeeker">
 
    <div class="card-body">
    <input type="hidden" name="volunteerEmail" value="<%=session.getAttribute("email")%>">
     <input type="hidden" name="seekerId" value="${key.getFormid() }">
    <input type="hidden" name="seekerEmail" value="${key.getEmail() }">
        <h5 class="card-title text-success"></h5>
        <p class="card-text"> <span class="text-success"></span>Type of Food: ${key.getTypeOfHelp() } </p>
        <p> <span class="text-success">Location:${key.getAddress() }</span></p> 
        <p> <span class="text-success">Phone Number:${key.getPhone() }</span></p> 
        <p>Please call the Seeker if she is free to receive the delivery at the given time </p>
        <input type="hidden" name="id" value="">
<input class="btn btn-success" type="submit" value="Press For Delivery">
    
    </div>
 </form>
  </div>
</c:if>
</c:forEach>
</body>
</html>