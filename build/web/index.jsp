<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SBI Bright Ideas</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
      <div align="center" style="padding-top: 25px">
          <img title="State Bank of India" alt="State Bank of India" src="sbi_logo.PNG" style="height: 40px;padding-left: 20px">
      </div>
    <div class="card card-login mx-auto mt-5" style="margin-top:20px !important">
      <div class="card-header">Login</div>
      <div class="card-body" style="box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 10px 10px rgba(0,0,0,0.23);">
        <form action="LoginController" method="GET">
          <div class="form-group">
            <label for="username">PF ID</label>
            <input class="form-control" id="username" type="number" name="pfid" aria-describedby="emailHelp" placeholder="Enter PF ID" maxlength="7">
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input class="form-control" id="password" type="password" name="password" placeholder="Password">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox">Remember Password</label>
            </div>
          </div>
            <input type="submit" class="btn btn-primary btn-block" value="Login"/>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="register.jsp">Register an Account</a>
<!--          <a class="d-block small" href="forgot-password.jsp">Forgot Password?</a>-->
        </div>
      </div>
    </div>
  </div>
     <!-- Login Response Modal-->
     <div class="response">
         <a class="nav-link" id="resigtrationSuccess" data-toggle="modal" data-target="#resigtrationSuccessModal"></a>
         <a class="nav-link" id="wrongCredential" data-toggle="modal" data-target="#wrongCredentialModal"></a>
     </div>
    <div class="modal fade" id="resigtrationSuccessModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Registration Successful!</h5>
<!--            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">x</span>
            </button>-->
          </div>
          <div class="modal-body">Click on OK button to Login.</div>
          <div class="modal-footer">
            <a class="btn btn-primary" href="index.jsp">OK</a>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="wrongCredentialModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Error!</h5>
<!--            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">x</span>
            </button>-->
          </div>
          <div class="modal-body">Wrong PF ID or password. Please enter credentials again.</div>
          <div class="modal-footer">
            <a class="btn btn-primary" href="index.jsp">OK</a>
          </div>
        </div>
      </div>
    </div>
         
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
