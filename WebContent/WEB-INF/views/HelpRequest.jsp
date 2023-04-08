<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
       <%@ page import="org.hibernate.Session, dbUtil.HibernateSF, models.UserInfo" %>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
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
       
       <c:forEach items="${helpList}" var="key">
 
   
     
       <form action="helprequest">
         <div class="card ">
     
   <div class="card-header">
      
        </div>
        <div class="card-body">
          <blockquote class="blockquote mb-0">
          

            <p><i class="fas fa-circle text-warning fa-1x"></i><span>Application is <span class="text-success"> ${key.getStatus() }</span> </span></p>
          <p>Application ID: ${key.getFormid() }</p>
           <input type="hidden" name="idHelp" value="${key.getFormid() }">
                    <p>Application Reason: ${key.getReason() }</p>
                         <select name="status" id="status">
  <option value="approved">approved</option>
  <option value="pending">pending</option>
  <option value="rejected">rejected</option>

</select>
          <input type="submit" value="Change Status">
          </blockquote>
        </div>
      </div>
       </form>
    
      </c:forEach>
</body>
</html>