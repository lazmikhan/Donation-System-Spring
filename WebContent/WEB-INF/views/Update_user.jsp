<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.UserInfo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    	.profile{
    padding-right: 100px;
    padding-bottom:20px;
    font-family: 'IBM Plex Sans', sans-serif;
}
.edit-profile-container{
    width:800px;
    height:600px;
    box-shadow: 0 3px 10px rgb(0 0 0 / 0.2);
    margin-top:30px;
    margin-left:20px;
    border-radius:10px;
    display:flex;
    justify-content:center;
}
#submit-btn{
    text-align: center;
    padding: 8px 15px;
    border:none;
    background-color: orange;
    border-radius:5px;
}
#submit-btn:hover{
    background-color:black;
    color:white;
    border-bottom: 2px solid orange;
    transition: background 0.5s;
}
.box>div>h2{
    text-align: center;
}
    </style>
    <title>Document</title>
</head>
<body>
	<%
		HttpSession sess = request.getSession();
		UserInfo user = (UserInfo)request.getAttribute("user");
		sess.setAttribute("user", user);
	%>
    <jsp:include page="header.jsp" />

    <main style="display: flex;justify-content: center;">
        <section id="edit-profile-container" class="edit-profile-container">
            <div class="box">
                <div>
                    <h2>Edit Profile</h2>
                </div>
                <hr>
                <form action="./userupdated" method="post">
                    <table>
                        <tr>
                            <td class="profile">Name:</td>
                            <td class="profile"> <input style="width:300px" type="text" name="name" class="form-control" placeholder="Name" value="${user.getName() }"aria-label="Last name"></td>
                        </tr>
                        <tr>
                        <tr>
                            <td class="profile">Email: </td>
                            <td class="profile"> <input style="width:300px" type="email" name="email" class="form-control" placeholder="Email" value="${user.getEmail() }"aria-label="Last name"></td>
                        </tr>
                        <tr>
                            <td class="profile">Role:</td>
                            <td class="profile">
                                <select class="form-select" name="userType" aria-label="Default select example" value="${user.getUserType() }">
                                    <option value="Donor" selected>Donor</option>
                                    <option value="Donation Seeker">DonationSeeker</option>
                                    <option value="Volunteer">Volunteer</option>
                                  </select>
                            </td>
                        </tr>
                       
                        <tr>
                            <td class="profile">Phone Number:</td>
                            <td class="profile"> <input style="width:300px" type="text" name="phone" class="form-control" placeholder="Number" value="${user.getPhone() }"aria-label="last-name"></td>
                        </tr>
                    </table>
                    <div style="text-align:center">
                        <button type="submit" id="submit-btn" onclick="submit()" name="update">Update</button>
                    </div>
                </form>
                
            </div>
        </section>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>