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
  <form action="addFailedForm">
    <div class="w-50 mx-auto mt-5">
        <div class="mb-3 ">
            <label for="exampleFormControlInput1" class="form-label"> Choose an option</label>
            <select id="userOption" name="option" class="select form-control-lg">
                <option value="1" disabled>Choose option</option>
                <option value="FailedCollect">Failed to Collect</option>
                <option value="Failed Delivery">Failed to Deliver</option>
          
              </select>
          </div>
          <div class="mb-3">
            <label for="exampleFormControlTextarea1"  class="form-label">Mention The reason </label>
            <textarea class="form-control" name="failedReason" id="exampleFormControlTextarea1" rows="3"></textarea>
            <br>
            <input type ="submit">
          </div>
          <p class="text-success">${failedmsg }</p>
    </div>
  </form>

</body>
</html>