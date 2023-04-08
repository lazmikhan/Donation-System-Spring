<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Document</title>
    
</head>
<body>
    <header>
         <jsp:include page="header.jsp" />
    </header>

    <main>
        <h2 class="text-center mt-5">System Report</h2>
        <section class="mt-5 d-flex justify-content-center" >
            <div style="width: 800px;">
                <table class="table table-striped">
                    <thead>
                      <tr class="table-primary">
                        <th class="fs-5" scope="col">#</th>
                        <th class="fs-5" scope="col">Category</th>
                        <th class="fs-5" scope="col">Number</th>
                       
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td class="fs-5">Number of Help Requests Received</td>
                        <td class="fs-5">${helpNumber }</td>
                       
                      </tr>
                      <tr>
                        <th class="fs-5" scope="row">2</th>
                        <td class="fs-5">Number of Donations Received</td>
                        <td class="fs-5">${donationSize }</td>
                       
                      </tr>
                      <tr>
                        <th class="fs-5" scope="row">3</th>
                        <td class="fs-5" >Number of Failed Deliveries</td>
                        <td class="fs-5" >${failedFormSize }</td>
                      
                      </tr>
                    </tbody>
                  </table>
            </div>
        </section>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>