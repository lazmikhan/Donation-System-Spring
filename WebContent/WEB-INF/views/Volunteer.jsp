<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.Session, dbUtil.HibernateSF, models.UserInfo" %>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>

	<%
		HttpSession sess = request.getSession();
		UserInfo user = (UserInfo)sess.getAttribute("user");
		sess.setAttribute("user", user);
	%>
 
       <jsp:include page="header.jsp" />
<h1 class="text-center text-success">Welcome to Volunteer Page</h1>
    <!-- header -->
<!-- Active donation items -->

 <c:forEach items="${donationList}" var="key">
   <c:if test="${key.getDelivered()=='No'}">
<div class="card">
    <div class="card-header">
<span class="text-success fw-bold">     Donation ID:</span>   ${key.getDonationId() }
    </div>
   
 <form method="POST" action="deliveryAccepted">
 
    <div class="card-body">
    <input type="hidden" name="volunteerEmail" value="<%=session.getAttribute("email")%>">
   
        <h5 class="card-title text-success">${key.getFoodName() }</h5>
        <p class="card-text"> <span class="text-success">${key.getFoodDesc() }</span>Hello, I run a hotel and some of my mutton biriyani got saved , I would like to donate all of it to someone needy </p>
        <p> <span class="text-success">Location:</span>${key.getLocation() }</p> 
        <p> <span class="text-success">Phone Number:</span>${key.getPhoneNo() }</p> 
        <input type="hidden" name="id" value="${key.getDonationId()}">
<input class="btn btn-success" type="submit" value="Accept Delivery">
    
    </div>
 </form>
  </div>
  </c:if>
</c:forEach>



</body>
</html>