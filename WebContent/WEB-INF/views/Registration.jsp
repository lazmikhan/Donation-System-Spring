<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Registration</title>
<style>
p{
    color: red;
}
body{
    background-image: url('https://wallpaperaccess.com/full/1127259.jpg')
}


.reg-header {
    height: 10em;
    position: relative }              /* 1 */
    .reg-header h1 {
    margin: 0;
    position: absolute;               /* 2 */
    top: 50%;                         /* 3 */
    transform: translate(0, -50%) }   /* 4 */
</style>
</head>
<body>
 <div class="d-flex">
    <section class=" d-flex align-items-center justify-content-center flex-column w-50 ">
        <h1 class=" mx-auto  text-center   text-white">Blue Stone Food Support </h1>
        <i class="text-white">We are there for you....</i>
            </section>
            
            <section class="vh-100 gradient-custom w-100">
                <div class="container py-5 h-100">
                  <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                      <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5">
                          <h3 class="text-success mb-4 pb-2 pb-md-0 mb-md-5">Please Register</h3>
                          <form action="added">
              
                           <div class="row">
                              <div class="col-md-6 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input type="name" name="name" id="emailAddress" class="form-control form-control-lg" />
                                  <label class="form-label" for="emailAddress">Name </label>
                                </div>
              
                              </div>
                              <div class="col-md-6 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input name="password" type="password" id="phoneNumber" class="form-control form-control-lg" />
                                  <label class="form-label" for="phoneNumber">Password</label>
                                </div>
              
                              </div>
                            </div>
              
              
                            <div class="row">
                              <div class="col-md-6 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input name="email" type="email" id="emailAddress" class="form-control form-control-lg" />
                                  <label class="form-label" for="emailAddress">Email</label>
                                </div>
              
                              </div>
                              <div class="col-md-6 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <input name="phone" type="tel" id="phoneNumber" class="form-control form-control-lg" />
                                  <label class="form-label" for="phoneNumber">Phone Number</label>
                                </div>
              
                              </div>
                            </div>
              
                            <div class="row">
                              <div class="col-12">
              
                            
                                <label class="form-label select-label">You Are Applying As a</label>
                                <select name="userType" id="userOption" class="select form-control-lg">
                                    <option value="1" disabled>Choose option</option>
                                    <option value="Donor">Donor</option>
                                    <option value="DonationSeeker">Donation Seeker</option>
                                    <option value="Volunteer">Volunteer</option>
                                  </select>
                              </div>
                            </div>
              
                            <div class="mt-4 pt-2">
                              <input  class="btn btn-success   btn-lg " type="submit"  value="Submit" />
                            </div>
                            <a href="./login">Already A User?</a>
            <p class="text-danger">${message}</p>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
   </div>

   </script>
</body>
</html>