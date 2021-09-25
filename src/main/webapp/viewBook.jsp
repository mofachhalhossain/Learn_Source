<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>[Admin] View Books</title>
<%@include file="component/css.jsp"%>
</head>
<body style="background-color: #7d5f5f">

<%@include file="component/navbar.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3 class="text-center text-white">All Books</h3>
            <div class="card mt-2">
                <div class="card-body">
                    <div class="text-center text-primary">
                        <h5>Title</h5>
                        <p>Author</p>
                        <br>
                        <div class="form-row text-center">
                            <div class="form-group col-md-3 ">
                                <input type="text" class="form-control form-control-sm" value="category" readonly>
                            </div>
                        </div>
                        <div class="text-center">
                            <a href="#" class="btn btn-sm bg-success text-white">Edit</a>
                            <a href="#" class="btn btn-sm bg-danger text-white">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>