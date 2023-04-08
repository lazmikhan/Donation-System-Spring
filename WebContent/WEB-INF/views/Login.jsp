<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Registration.css">
    <link rel="stylesheet" href="">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Document</title>
    <style>
      p{
    color: red;
}
body{
    background-image: url('https://img.freepik.com/free-photo/beautiful-tree-middle-field-covered-with-grass-with-tree-line-background_181624-29267.jpg?w=2000')
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
            
            <section class="vh-100 gradient-custom w-80">
                <div class="container py-5 h-100">
                  <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                      <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5">
                          <h3 class="text-success mb-4 pb-2 pb-md-0 mb-md-5">Login</h3>
                          <form action="loggedIn?id=${name}" method="GET">
              
                            <div class="row">
                              <div class="col-md-12 mb-4">
              
                                <div class="form-outline">
                                  <label class="form-label"  for="email">Email</label>
                                  <input required  name="email" id="email" class="form-control form-control-lg" />
                                </div>
              
                              </div>
                            <div class="row">
                              <div class="col-md-12 mb-4 pb-2">
              
                                <div class="form-outline">
                                  <label class="form-label" for="password">Password</label>
                                  <input required type="password" name="password" id="password" class="form-control form-control-lg" />
                                  
                                </div>
                              </div>
              
                            </div>

                            <div>
                              <input type="checkbox" id="remember" name="remember" value="remember">
                              <label for="remember"> Remember me</label><br>

                            </div>
              
                            <div class="mt-4 pt-2">
                              <input class="btn btn-success  btn-lg " type="submit" value="Login" />
                            </div>
             <p class="text-danger"> ${message}</p>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
   </div>
</body>
</html>