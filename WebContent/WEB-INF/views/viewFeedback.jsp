<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="header.jsp" />
    <h2 class="text-success"> All Feedbacks</h2>
   <c:forEach items="${feedbackData}" var="key">
 
<div class="card">
    <div class="card-header">

    </div>
   
 <form method="POST" action="deliveryCollected">
 
    <div class="card-body">
      
        <h5 class="card-title text-success">Name: ${key.getName() }</h5>
                <h5 class="card-title text-success">Email: ${key.getEmail() }</h5>
          <p class="card-text"> <span class="text-success">Message: ${key.getMessage() }</span> </p>
        <p class="card-text"> <span class="text-success">Feedback ID: ${key.getFeedbackID() }</span> </p>
       
        


  
 </form>

   
    </div>
  </div>

</c:forEach>
</body>
</html>