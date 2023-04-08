<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="org.hibernate.Session, dbUtil.HibernateSF, models.UserInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/3b05c30c92.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%
		HttpSession sess = request.getSession();
		UserInfo user = (UserInfo) sess.getAttribute("user");
	%>
	<jsp:include page="header.jsp" />
	<!-- nav  -->
	<div class="d-flex vh-100  ">
		<section class="w-25 bg-success text-center text-white">
			<div class="d-flex justify-content-center mt-5">
				<img style="width: 100px;" class=" border rounded-circle "
					src="https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_3.jpg"
					alt="">
			</div>

			<h5 class="text-white text-center"><%=user.getName()%></h5>


			<br> <a href="./editprofile"><i
				class="fas fa-edit text-white fa-2x mt-5"></i></a>
		</section>



		<section class="w-75 text-dark">
          <h1>Information</h1>
          <hr>
          <div class="d-flex justify-content-between me-5 ms-5">
            <div>
          
                <h3>Email      <i class="fas fa-edit text-success fa-1x mt-5"></i></h3>
                <p style="color: grey;"><%=user.getEmail() %></p>
            
                <h3>User Type <i class="fas fa-edit text-success fa-1x mt-5"></i></h3>
                <p style="color: grey;"><%=user.getUserType() %></p>
         		
              </div>
              <div>
              
                <h3>Address <i class="fas fa-edit text-success fa-1x mt-5"></i></h3>
                <p style="color: grey;">13 BHD Mirne Street , Johor Bahru</p>
            
                <h3>Phone <i class="fas fa-edit text-success fa-1x mt-5"></i></h3>
                <p style="color: grey;"><%=user.getPhone() %></p>
         
              </div>
          
          </div>
       
        </section>


	</div>


</body>
</html>