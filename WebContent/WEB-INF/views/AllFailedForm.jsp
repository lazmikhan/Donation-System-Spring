<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="header.jsp" />
<h1 class="text-success text-center">All Failed Forms</h1>

 <c:forEach items="${failedForm}" var="key">
 
<div class="card">
    <div class="card-header">

    </div>
   
 <form method="POST" action="deliveryCollected">
 
    <div class="card-body">
         <input type="hidden" name="donerID" value="${key.getFailedFormId() }">
        <h5 class="card-title text-success">Type of Failure: ${key.getOption() }</h5>
          <p class="card-text"> <span class="text-success">Form ID: ${key.getFailedFormId() }</span> </p>
        <p class="card-text"> <span class="text-success">Reason: ${key.getFailedReason() }</span> </p>
       
        


  
 </form>

   
    </div>
  </div>

</c:forEach>

</body>
</html>