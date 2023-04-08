<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="org.hibernate.Session, dbUtil.HibernateSF, models.UserInfo" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		HttpSession sess = request.getSession();
		UserInfo user = (UserInfo)sess.getAttribute("user");
		sess.setAttribute("user", user);
	%>
 
       <jsp:include page="header.jsp" />
       
       <div class="card">
    <div class="card-header">
<span class="text-success fw-bold">     Donation ID: ${donation.getDonationId() }</span>    
    </div>
   
 <form method="POST" action="thankPage">
 
    <div class="card-body">
    <input type="hidden" name="volunteerEmail" value="<%=session.getAttribute("email")%>">
  
 
        <h5 class="card-title text-success"></h5>
          <p> <span class="text-success">Food Name:${donation.getFoodName() }</span></p> 
        <p> <span class="text-success">Location:${donation.getLocation() }</span></p> 
        <p> <span class="text-success">Phone Number:${donation.getPhoneNo() }</span></p> 
               <p> <span class="text-success">Phone Number:${donation.getFoodDesc() }</span></p> 
        <p>Please call the Seeker if she is free to receive the delivery at the given time </p>
        <input type="hidden" name="thankid" value="${donation.getDonationId() }">
<input class="btn btn-success" type="submit" value="Delivered">
    
    </div>
 </form>
  </div>
</body>
</html>