<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/css.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container-fluid">
    <div class="row p-5">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="text-center">
                        <h1>Login</h1>
                    </div>
                    <form action="login" method="post">
                        <div class="form-group">
                            <label>Enter Email</label>
                            <input type="email" name="email" class="form-control" required="required" id="inputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" required="required" id="inputPassword1" aria-describedby="passwordHelp">
                        </div>
                        <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br><br><br><br>

<%@include file="component/footer.jsp"%>

</body>
</html>