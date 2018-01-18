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
            <a class="navbar-brand logo" href="dashboardcontroller.jsp" style="padding: 0px;">
                <img title="State Bank of India" alt="State Bank of India" src="sbi_logo.PNG" style="height: 28px">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion" style="background-color: whitesmoke !important;box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23)">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Sboard">
                        <a class="nav-link"  href="dashboardcontroller.jsp">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
                    
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="All Suggestion">
                        <a class="nav-link" href="allsuggestionscontr.jsp">
                            <i class="fa fa-fw fa-inbox"></i>
                            <span class="nav-link-text">All Suggestions</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Closed Suggestion">
                        <a class="nav-link" href="closedsuggestionscontr.jsp">
                            <i class="fa fa-fw fa-inbox"></i>
                            <span class="nav-link-text">Closed Suggestions</span>
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
                    <li class="breadcrumb-item active">All Suggestions</li>
                </ol>
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-table"></i> Data Table</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Suggestion ID</th>
                                        <th>Title</th>
                                        <th>Category</th>
                                        <th>From</th>
                                        <th>Creation Date</th>
                                        <th>Options</th>
                                    </tr>
                                </thead>
                              
                                <tbody >
                                    <jsp:include page="/AllSuggestionsConController" />
                                    <c:set var="count" value="1" scope="page"/>
                                    <c:forEach items="${suggestions}" var="suggestion">
                                        <tr id="${count}">
                                            <td>${suggestion.suggestionid}</td>
                                            <td>${suggestion.title}</td>
                                            <td>${suggestion.category}</td>
                                            <td>${suggestion.createdbyname}</td>
                                            <td> ${suggestion.creationdate}</td>
                                            <td id="${suggestion.suggestionid}"> <a class="btn btn-primary view" style="color:white" data-toggle="modal" data-target="#viewSuggestionModal">View</a></td>                                        
                                        </tr>
                                    <c:set var="count" value="${count + 1}" scope="page"/>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <form action>
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
                      <!-- View Suggestion Modal-->
                    <div class="modal fade" id="viewSuggestionModal" tabindex="-1" role="dialog" aria-labelledby="viewSuggestionModalLabel" aria-hidden="true">
                        <div class="modal-dialog popup" role="document" style="max-width: 850px">
                            <div class="modal-content">
                                <%-- <c:forEach items="${suggestions}" var="suggestion"> --%>
                                <div class="modal-header">
                                    <h5 class="modal-title" id="suggestionModalLabel" style="margin-left: 30px; margin-right: 30px">
                                        <div class="title" style="text-align: justify">Title : <Strong class="title"></strong></div>
                                    </h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">x</span>
                                    </button>
                                </div>
                                <div class="media"> 
                                    <div class="media-body" style="margin: 20px;margin-left: 50px; margin-right: 50px">
                                        <div class="suggestionid">Suggestion ID : <strong class="id"></strong><br/></div>
                                        <div class="category">Category : <strong class="category"></strong><br/></div>
                                        
                                        <div class="createdby">From : <strong class="createdby"></strong><br/></div>
                                        <div class="description" style="display: none">Description :<br/><div class="desc" style="background-color: whitesmoke;text-align: justify;border-style: solid;border-width: 1px; padding: 10px;border-color:grey;border-radius: 5px;"></div></div><br/>
                                        <div class="date">Creation Date :<strong class="date"></strong></div>
                                    </div>
                                </div>
                                <%--   </c:forEach> --%>
                                <div class="modal-footer button">
                                    <a class="btn btn-primary remove"  style="color: white;"><i class="fa fa-fw fa-eraser"></i>&nbsp;Remove</a>
                                    <a class="btn btn-primary addcomment" style="color: white"><i class="fa fa-fw fa-comment-o"></i>&nbsp;Comment</a>
                                    <a class="btn btn-primary suggestionclose" style="color: white"><i class="fa fa-fw fa-edit"></i>&nbsp;Close</a>
                                    <button class="btn btn-primary"  type="button" data-dismiss="modal" >OK</button>
                                </div>
                                <div class="form-comment" style="padding-top: -10px; padding-bottom: 5px;margin: 0px;margin-left: 50px; margin-right: 50px" align="right">
                                    <textarea class="form-control" rows="5" id="comment"></textarea><br/>
                                    <button class="btn btn-primary cancel"  type="button" style="margin-top: -20px;margin-right: 5px">Cancel</button>
                                    <button class="btn btn-primary submit"  type="button" style="margin-top: -20px">Submit</button>
                                </div>
                                <div class="commentdetails" style="margin-left: 50px; margin-right: 50px"></div>
                            </div>
                        </div>
                    </div>
                    <!-- View Suggestion Modal-->
                    <div class="modal fade" id="viewSuggestionEditModal" tabindex="-1" role="dialog" aria-labelledby="viewSuggestionModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <%-- <c:forEach items="${suggestions}" var="suggestion"> --%>
                                <div class="modal-header">
                                    <h5 class="modal-title" id="suggestionModalLabel"></h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">x</span>
                                    </button>
                                </div>
                                <div class="media">
                                    <div class="media-body" style="padding-top: 10px; padding-bottom: 10px; padding-left: 50px; padding-right: 100px;">
                                        <br/>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-body" style="padding-top: 10px; padding-bottom: 10px; padding-left: 50px; padding-right: 100px;">
                                        <br/>
                                    </div>
                                </div>
                                <%--   </c:forEach> --%>
                                <div class="modal-footer">

                                    <a class="btn btn-secondary" type="button" data-dismiss="modal" style="color: white" data-target="#viewSuggestionEditModal">Edit</a>
                                    <button class="btn btn-primary" type="button" data-dismiss="modal" >OK</button>

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