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
<form action="addFeedback">
<h1 class="text-success
 text-center">Please Leave a Feedback</h1>
 <table class="d-flex justify-content-center">
                        <tr style="text-align:center">
                            <td class="profile style="text-align:center""> Name:</td>
                            <td class="profile"> <input name="feedbackName" style="width:300px" type="text" class="form-control" placeholder=" Name" value=""aria-label="Last name"></td>
                        </tr>
                        <tr>
                            <td class="profile"> Email:</td>
                            <td class="profile"> <input name="feedbackEmail" style="width:300px" type="email" class="form-control" placeholder="Email" value=""aria-label="Last name"></td>
                        </tr>
                        <tr>
                            <td class="profile">Message:</td>
                            <td class="profile"><textarea name="feedbackMessage" style="width:300px" type="text" class="form-control" placeholder="Message" value=""aria-label="last-name"></textarea> </td>
                        </tr>
                      
                    </table>
                    <div style="text-align:center">
                        <button type="submit" id="submit-btn" class="btn btn-success" name="update">Submit</button>
                        <p class="text-success">${fMessage}</p>
                    </div>
</form>
</body>
</html>