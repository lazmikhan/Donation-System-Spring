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

      <section>
        <div class="card">
            <div class="card-header">
        <span class="text-success fw-bold">     Volunteer Name: </span>   Abdul Hamid
            </div>
            <div class="card-body">
                <h5 class="card-title text-success">Reason for failed delivery for chocolate muffin</h5>
                <p>The Donor of the food did not pick up my calls , I waited there for 50 minutes but no one came with the food</p>
          
        
       <button class="btn btn-danger">Read & Delete</button>
         </div>
          </div>
          <div class="card">
            <div class="card-header">
        <span class="text-success fw-bold">     Volunteer Name: </span>   Mira Emily
            </div>
            <div class="card-body">
                <h5 class="card-title text-success">Reason for failed delivery of Mutton Biriyani</h5>
                <p>My car broke down in the middle of the road</p>
          
        
       <button class="btn btn-danger">Read & Delete</button>
         </div>
          </div>
      </section>
</body>
</html>