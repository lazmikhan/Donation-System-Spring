<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<body class="">
    <jsp:include page="header.jsp" />

 <c:forEach items="${dFormList}" var="key">
   <c:if test="${key.getDelivered()=='accepted'}">
<div class="card">
    <div class="card-header">
<span class="text-success fw-bold">     Donation ID:</span>   ${key.getDonationId() }
    </div>
   
 <form method="POST" action="deliveryCollected">
 
    <div class="card-body">
         <input type="hidden" name="donerID" value="${key.getDonationId() }">
        <h5 class="card-title text-success">${key.getFoodName() }</h5>
        <p class="card-text"> <span class="text-success">${key.getFoodDesc() }</span> </p>
        <p> <span class="text-success">Location:</span>${key.getLocation() }</p> 
        <p> <span class="text-success">Phone Number:</span>${key.getPhoneNo() }</p> 
        <label>Please Set a Time For Delivery:</label>
          <input type="datetime-local" name="time" >
        <input type="hidden" name="id" value="${key.getDonationId()}">
<input class="btn btn-success" type="submit" value="Delivery Collected">

  
 </form>
<form action="deliveryFailed">
  <input type="hidden" name="volunteerEmail" value="<%=session.getAttribute("email")%>">
   
  <input class="btn btn-danger mt-1" type="submit" value=" Failed To Collected"></form>
   
    </div>
  </div>
  </c:if>
</c:forEach>

</body>
</html>