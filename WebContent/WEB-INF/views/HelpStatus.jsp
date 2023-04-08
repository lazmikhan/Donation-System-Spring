<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/3b05c30c92.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
    <jsp:include page="header.jsp" />
    <!-- nav  -->
    <div class="d-flex justify-content-center align-items-center mt-5">
        <div class="card ">
            <div class="card-header">
              You have  incoming Help
            </div>
            <div class="card-body">
              <blockquote class="blockquote mb-0">
                <p></i><span>Help for Food</span></p>
              
                <footer class="blockquote-footer"> <cite title="Source Title">Once help available you will be notified in the system , if no response comes within 5 minutes we will Email and Call you 
                  
                </cite></footer>
              </blockquote>
            </div>
          </div>
    </div>
    <!-- help coming  -->
     <c:forEach items="${donationFormList}" var="key">
      <c:if test="${key.getDelivered()=='collected'}">
    <div class="d-flex justify-content-center align-items-center mt-5 " >
        <div class="card " style="width:900px">
            <div class="card-header">
                
              <span>  <i class="fas fa-circle text-success fa-1x"></i></span>   You have an help incoming help

              <div class="card">
                <div class="card-header">
            <span class="text-success fw-bold">Delivery Time:</span>  ${key.getTime()}
                </div>
                <div class="card-body">
                    <h5 class="card-title text-success">Food Name: ${key.getFoodName() }</h5>
                    <p class="card-text"> <span class="text-success">Description:</span>${key.getFoodDesc() } </p>
            
            
           
                </div>
              </div>
            </div>
     
          </div>
    </div>

    </c:if>
    </c:forEach>
        <a href="./feedbackForm">Please Leave a feedback after you receive help</a>
</body>
</html>