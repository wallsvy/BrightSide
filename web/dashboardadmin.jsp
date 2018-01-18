<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title></title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link href="css/suggestionbox.css" rel="stylesheet">
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav" style="box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23)">
            <a class="navbar-brand logo" href="dashboard.jsp" style="padding: 0px">
                <img title="State Bank of India" alt="State Bank of India" src="sbi_logo.PNG" style="height: 28px">
            </a>	
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion" style="background-color: whitesmoke !important;box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23)">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                        <a class="nav-link dashboard" href="dashboardadmin.jsp">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Register User</span>
                        </a>
                    </li>
<!--                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Create Suggestion">
                        <a class="nav-link" href="deleteuseradmin.jsp">
                            <i class="fa fa-fw fa-minus-square"></i>
                            <span class="nav-link-text">Delete user</span>
                        </a>
                    </li>-->
                

                </ul>

                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler" style="background-color:rgb(40, 0, 112) !important;box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="content-wrapper">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">Register a new user</li>
                </ol>

                <div class="card  mx-auto mt-5" style="margin-top:20px !important;margin-bottom: 20px;">
                    <div class="card-header">Register an Account</div>
                    <div class="card-body" style="margin-left: 20px;margin-right: 20px;margin-bottom: 20px">
                        <form action="AdminRegisterController" method="POST">
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
                                    <option value="RM">Regional Manager</option>
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

                    </div>
                </div>

                <form action>
                    <footer class="sticky-footer" style="background-color: whitesmoke">
                        <div class="container">
                            <div class="text-center">
                                <small>Copyright © SBI 2017</small>
                            </div>
                        </div>
                    </footer>
                    <!-- Scroll to Top Button-->
                    <a class="scroll-to-top rounded" href="#page-top">
                        <i class="fa fa-angle-up"></i>
                    </a>

            </div>
            <!-- Logout Modal-->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">x</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-primary" href="index.jsp">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Registration Response Modal-->
            <div class="response">
                <a class="nav-link" id="resigtrationSuccess" data-toggle="modal" data-target="#resigtrationSuccessModal"></a>
               
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
                            <a class="btn btn-primary" href="dashboardadmin.jsp">OK</a>
                        </div>
                    </div>
                </div>
            </div>    

            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
            <!-- Page level plugin JavaScript-->

            <script src="vendor/datatables/jquery.dataTables.js"></script>
            <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin.min.js"></script>
            <!-- Custom scripts for this page-->
            <script src="js/sb-admin-datatables.min.js"></script>
            <script src="js/suggestionbox.js"></script>
        </div>
    </div>

</body>
</html>