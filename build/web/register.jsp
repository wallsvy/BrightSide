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
            <div class="card card-register mx-auto mt-5" style="margin-top:20px !important">
                <div class="card-header">Register an Account</div>
                <div class="card-body" style="box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 10px 10px rgba(0,0,0,0.23);">
                    <form action="RegisterController" method="GET">
                        <div class="form-group">
                            <label for="username">PF ID</label>
                            <input required class="form-control" id="pfid" name="pfid" type="number" min="1" maxlength="7" aria-describedby="emailHelp" placeholder="Enter number">
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="exampleInputName">First name</label>
                                    <input required class="form-control" id="exampleInputName" name="firstname" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                                </div>
                                <div class="col-md-6">
                                    <label for="exampleInputLastName">Last name</label>
                                    <input required class="form-control" id="exampleInputLastName" name="lastname" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input required class="form-control" id="exampleInputEmail1" name="emailid" type="email" aria-describedby="emailHelp" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="designation">Designation</label>
                            <select required class="form-control" name="designation" id="designation">
                                <option disabled selected value>Select an option</option>                                
                                <option value="Assitant">Assistant</option>
                                <option value="AM">Assistant Manager</option>
                                <option value="DM">Dy. Manager</option>
                                <option value="M">Manager</option>
                                <option value="CM">Chief Manager</option>
                                <option value="AGM">Asst. General Manager</option>
                                <option value="DGM">Dy.General Manager</option>
                                
                                <option value="Others">Other Staff Members</option>
                            </select>
                            <!--                            <input class="form-control" id="designation" name="designation" type="text" aria-describedby="emailHelp" placeholder="Enter designation">-->
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input required class="form-control" id="exampleInputPassword1" name="password" type="password" placeholder="Password">
                                </div>
                                <div class="col-md-6">
                                    <label for="exampleConfirmPassword">Confirm password</label>
                                    <input required class="form-control" id="exampleConfirmPassword" name="confirmpassword" type="password" placeholder="Confirm password">
                                </div>
                            </div>
                        </div>
                        <input required type="submit" id="submit" class="btn btn-primary btn-block" value="Register">
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="index.jsp">Login Page</a>
                        <!--                        <a class="d-block small" href="forgot-password.jsp">Forgot Password?</a>-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Registration Response Modal-->
        <div class="response">
            <a class="nav-link" id="numeric" data-toggle="modal" data-target="#numericModal"></a>
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
        <script>

        </script>

    </body>

</html>
