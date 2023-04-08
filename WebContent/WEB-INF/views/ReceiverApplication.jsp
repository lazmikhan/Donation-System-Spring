<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
     <jsp:include page="header.jsp" />

      <!-- nav  -->

      <div class="card">
        <div class="card-header">
    <span class="text-success fw-bold">     Help Application </span>   From Milina Hangs        </div>
        <div class="card-body">
            <h5 class="card-title text-success"></h5>
            <p class="card-text"> <span class="text-success">Email:</span>MilinaHangs222@gmail.com </p>
            <p class="card-text"> <span class="text-success">DOB:</span>19th November 2022 </p>
            <p> <span class="text-success">Location:</span>19 Jalan Alam , Skudai .Johor</p> 
            <p> <span class="text-success">Phone Number:</span>+602727272</p> 
            <p> <span class="text-success">Full Address:</span>Jalan 22 55 Spark skudai</p> 
            <p> <span class="text-success">Description:</span>I am a worker at socio club but recently there has been a huge loss in the company so many employees have been cut short i do not have a job right now </p> 
    
     <div id="collectDiv">
     <button onclick="CollectButtonCLick()" class="btn btn-success "> Accept</button>
     <a href="/Volunteer/FailedForm.html" class="btn btn-danger"> Reject</a>
     </div>
<div style="display: none" id="msgDiv">
    <button onclick="DeliverButton()" class="btn btn-success "> Delivered </button>
    <a href="/Volunteer/FailedForm.html" class="btn btn-danger">Failed to Deliver</a>
</div>
<div id="compDIV">
   
</div>
     </div>
      </div>
</body>
</html>