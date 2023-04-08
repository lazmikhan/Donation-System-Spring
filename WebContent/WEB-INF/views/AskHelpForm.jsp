<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="  models.UserInfo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	<%
		HttpSession sess = request.getSession();
		UserInfo user = (UserInfo)sess.getAttribute("user");
		sess.setAttribute("user", user);
	%>
 
       <jsp:include page="header.jsp" />
<h1 class="text-center text-success">Welcome to Donation Seeker Page</h1>

     <!-- nav -->
     <form action="allApp">
     <input value ="See Previous Application Status" type="submit" class="btn btn-success">
     </form>

    <section class="vh-100 gradient-custom w-100">
        <div class="container py-5 h-100 text-success">
          <div class="row justify-content-center align-items-center h-100">
            <div class="col-12 col-lg-9 col-xl-7">
              <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                <div class="card-body p-4 p-md-5">
                  <h3 class="text-success mb-4 pb-2 pb-md-0 mb-md-5">Please Fill Up the Help application form</h3>
                  <form action="allApplication" method="POST">
      
                    <div class="row">
                      <div class="col-md-6 mb-4">
      
                        <div class="form-outline">
                          <input type="text" name="fname" id="firstName" class="form-control form-control-lg" />
                          <label class="form-label" for="firstName">First Name</label>
                        </div>
      
                      </div>
                      <div class="col-md-6 mb-4">      
                        <div class="form-outline">
                          <input type="text" name="lname" id="lastName" class="form-control form-control-lg" />
                          <label class="form-label" for="lastName">Last Name</label>
                        </div>
      
                      </div>
                    </div>
      
                    <div class="row">
                      <div class="col-md-6 mb-4 d-flex align-items-center">
      
                        <div class="form-outline datepicker w-100">
                          <input type="date"name="dob"  class="form-control form-control-lg" id="birthdayDate" />
                          <label for="birthdayDate" class="form-label">Date of Birth</label>
                        </div>
      
                      </div>
                      <div class="col-md-6 mb-4">
      
                        <h6 class="mb-2 pb-1">Gender: </h6>
      
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                            value="Female" checked />
                          <label class="form-check-label" for="femaleGender">Female</label>
                        </div>
      
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="gender" id="maleGender"
                            value="Male" />
                          <label class="form-check-label" for="maleGender">Male</label>
                        </div>
      
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="gender" id="otherGender"
                            value="Other" />
                          <label class="form-check-label" for="otherGender">Other</label>
                        </div>
      
                      </div>
                    </div>
      
                    <div class="row">
                      <div class="col-md-6 mb-4 pb-2">
      
                        <div class="form-outline">
                          <input type="email" readonly id="emailAddress" value=<%=session.getAttribute("email") %> name="email" class="form-control form-control-lg" />
                          <label class="form-label"  for="emailAddress">Email</label>
                        </div>
      
                      </div>
                      <div class="col-md-6 mb-4 pb-2">
      
                        <div class="form-outline">
                          <input type="tel" id="phoneNumber" name="phone" class="form-control form-control-lg" />
                          <label class="form-label" for="phoneNumber">Phone Number</label>
                        </div>
      
                      </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-4 pb-2">
        
                          <div class="form-outline">
                            <input type="" name="occupation" class="form-control form-control-lg" />
                            <label class="form-label" for="Occupation">Occupation</label>
                          </div>
        
                        </div>
                        <div class="col-md-6 mb-4 pb-2">
        
                          <div class="form-outline">
                            <input type="text" name="address" id="Address" class="form-control form-control-lg" />
                            <label class="form-label" for="Address">Full Address</label>
                          </div>
        
                        </div>
                      </div>
      
                    <div class="row">
                      <div class="col-12">
      
                    
                        <label class="form-label select-label">Need Help with</label>
                        <select id="userOption" name="typeOfHelp" class="select form-control-lg">
                            <option value="1" disabled>Choose option</option>
                            <option value="Food">Food</option>
                            <option value="Money">Money</option>
                          
                          </select>
                      </div>
                 
                  
                    </div>
                    
                    <div class="form-outline mt-4">
                     <textarea class="border border-1 rounded" name="reason" id="" cols="80" rows="5"></textarea>
                        <label class="form-label" for="reason">State Your Reason(Write Carefully)</label>
                      </div>
                    <div class="mt-4 pt-2">
                    <input value="Submit" type="submit" class="btn btn-success   btn-lg " >
                 
                    </div>
      
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- help form  -->

    

</body>
</html>