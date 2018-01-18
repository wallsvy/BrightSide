<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link href="css/suggestionbox.css" rel="stylesheet">
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav" style="box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23)">
            <a class="navbar-brand logo" href="dashboardcontroller.jsp" style="padding: 0px;">
                <img title="State Bank of India" alt="State Bank of India" src="sbi_logo.PNG" style="height: 28px">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion" style="background-color: whitesmoke !important;box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23)">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                        <a class="nav-link"  href="dashboardcontroller.jsp">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Create Suggestion">
                        <a class="nav-link" href="createsuggestioncontr.jsp">
                            <i class="fa fa-fw fa-plus-square"></i>
                            <span class="nav-link-text">Create Suggestion</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Create Suggestion">
                        <a class="nav-link" href="allsuggestionscontr.jsp">
                            <i class="fa fa-fw fa-inbox"></i>
                            <span class="nav-link-text">All Suggestions</span>
                        </a>
                    </li>
                    
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
                    <li class="breadcrumb-item active">Create a new suggestion</li>
                </ol>
                 
                        <form action="CreateSuggestionController" method="post">
                            <div class="form-group">
                                <label for="title">Category</label>
                                <select class="form-control" name="category" id="category">
                                    <option disabled selected value>Select an option</option>
                                    <option value="Branch">Branch</option>
                                    <option value="Business Process">Business Process</option>
                                    <option value="Training">Training</option>
                                    <option value="HR">HR</option>
                                    <option value="Estate">Estate</option>
                                    <option value="Network">Network</option>
                                    <option value="Others">Others</option>
                                </select>
<!--                                <input class="form-control" id="category" type="text" name="category" aria-describedby="emailHelp" placeholder="Enter Category">-->
                            </div>
                            <div class="form-group">
                                <label for="title">Title</label>
                                <input class="form-control" id="title" type="text" name="title" aria-describedby="emailHelp" placeholder="Enter title">
                            </div>
                            <div class="form-group">
                                <label for="title">Description</label>
                                <textarea rows="10" cols="100" class="form-control" id="description" name="description" aria-describedby="emailHelp"></textarea>
                            </div>
                            <div class="form-group">
                                 
                                <input class="btn btn-primary btn-block" id="description" type="submit" value="Submit">
                            </div>
                        </form>
                        


                <footer class="sticky-footer">
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
                <!-- Bootstrap core JavaScript-->
                <script src="vendor/jquery/jquery.min.js"></script>
                <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <!-- Core plugin JavaScript-->
                <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
                <!-- Page level plugin JavaScript-->
                <script src="vendor/chart.js/Chart.min.js"></script>
                <script src="vendor/datatables/jquery.dataTables.js"></script>
                <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
                <!-- Custom scripts for all pages-->
                <script src="js/sb-admin.min.js"></script>
                <!-- Custom scripts for this page-->
                <script src="js/sb-admin-datatables.min.js"></script>
                <script src="js/sb-admin-charts.min.js"></script>
                <script src="js/suggestionbox.js"></script>
            </div>
        </div>

    </body>
</html>