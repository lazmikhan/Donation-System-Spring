<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <script src="https://kit.fontawesome.com/3b05c30c92.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="header.jsp" />
    <!-- nav  -->
<div class="d-flex flex-wrap justify-content-center align-items-center mt-5">
 <c:forEach items="${userFormList}" var="key">
 
   
      <c:if test="${key.getStatus()=='pending'}">
         <div class="card ">
     
   <div class="card-header">
          You have successfully applied for help
        </div>
        <div class="card-body">
          <blockquote class="blockquote mb-0">
          

            <p><i class="fas fa-circle text-warning fa-1x"></i><span>Application is ${key.getStatus() } </span></p>
          <p>Application ID: ${key.getFormid() }</p>
                    <p>Application Reason: ${key.getReason() }</p>
                         
                                        <p>Application Help Type: ${key.getTypeOfHelp() }</p>
            <footer class="blockquote-footer"> <cite title="Source Title">Wait for the admin to review your application, once reviewed the result will be shown in this page 
                <li> <i class="fas fa-circle text-success fa-1x"></i>(Approved)</li>
                <li><i class="fas fa-circle text-warning fa-1x"></i>(Pending)</li>
                <li><i class="fas fa-circle text-danger fa-1x"></i>(Rejected)</li>
            </cite></footer>
          </blockquote>
        </div>
      </div>
      </c:if>
      
      <div class="d-flex flex-wrap justify-content-center align-items-center mt-5">

      <c:if test="${key.getStatus()=='approved'}">
    <div class="card ">
        <div class="card-header">
          Admin has reviewed your application
        </div>
        <div class="card-body">
          <blockquote class="blockquote mb-0">
            <p><i class="fas fa-circle text-success fa-1x"></i><span>Application Approved</span></p>
          
            <footer class="blockquote-footer"> <cite title="Source Title">Please Click on this link to proceed------------------------------------------------------------------ <form action="helpStatus"> <input class="btn btn-success   btn-lg " type="submit" value="Seeker's DashBoard  ------------------------------------------------"> </form>
                <li> <i class="fas fa-circle text-success fa-1x"></i>(Approved)</li>
                <li><i class="fas fa-circle text-warning fa-1x"></i>(Pending)</li>
                <li><i class="fas fa-circle text-danger fa-1x"></i>(Rejected)</li>
            </cite></footer>
          </blockquote>
        </div>
      </div>
        </c:if>
</div>
<div class="d-flex flex-column justify-content-center align-items-center mt-5">
      <c:if test="${key.getStatus()=='rejected'}">
    <div class="card ">
        <div class="card-header">
          Case Closed
        </div>
        <div class="card-body">
          <blockquote class="blockquote mb-0">
            <p><i class="fas fa-circle text-danger fa-1x"></i><span>Application Rejected</span></p>
          
            <footer class="blockquote-footer"> <cite title="Source Title">Don't be disheartened apply again with better causes ------------------------------------------------
                <li> <i class="fas fa-circle text-success fa-1x"></i>(Approved)</li>
                <li><i class="fas fa-circle text-warning fa-1x"></i>(Pending)</li>
                <li><i class="fas fa-circle text-danger fa-1x"></i>(Rejected)</li>
            </cite></footer>
          </blockquote>
        </div>
               </c:if>
      </div>
      </c:forEach>
 
</div>


</div>
</body>
</html>