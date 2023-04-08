<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/3b05c30c92.js" crossorigin="anonymous"></script>
</head>
<body>
   <jsp:include page="header.jsp" />
    <!-- nav  -->
    <div class="d-flex justify-content-center align-items-center mt-5">
        <div class="card ">
            <div class="card-header">
              You have no help incoming 
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
    <div class="d-flex justify-content-center align-items-center mt-5">
        <div class="card ">
            <div class="card-header">
                
              <span>  <i class="fas fa-circle text-success fa-1x"></i></span>   You have an help incoming - Delivery Time (19 November , 1pm)

              <div class="card">
                <div class="card-header">
            <span class="text-success fw-bold">     Donor Name:</span>   Peyton Crawshaw
                </div>
                <div class="card-body">
                    <h5 class="card-title text-success">Mutton Biriyani</h5>
                    <p class="card-text"> <span class="text-success">Description:</span>Hello, I run a hotel and some of my mutton biriyani got saved , I would like to donate all of it to someone needy </p>
            
            
           
                </div>
              </div>
            </div>
            <div class="card-body">
              <blockquote class="blockquote mb-0">
                <p><span>Help for Food</span></p>
              
                <footer class="blockquote-footer"> <cite title="Source Title">Please Choose one of the options to proceed ---------------------------------------------------------<button class="btn btn-success" ><a class="text-white text-decoration-none" href="HelpAccepted.html">Accept</a></button>----<button class="btn btn-danger">Reject</button>
                  
                </cite></footer>
              </blockquote>
            </div>
          </div>
    </div>
</body>
</html>