<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<%@include file="component/css.jsp"%>
</head>
<body style="background-color: #7d5f5f">
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<h1>Registration</h1>
						</div>
						<form action="register" method="post">
							<div class="form-group">
								<label>Name</label> <input type="text" class="form-control"
									id="inputName" required="required" aria-describedby="emailHelp"
									name="name">
							</div>
							<div class="form-group">
								<label>Email</label> <input type="text" class="form-control"
									id="inputEmail" required="required"
									aria-describedby="emailHelp" name="email">
							</div>
							<div class="form-group">
								<%--@declare id="inputpassword1"--%>
								<label for="inputPassword1">Password</label> <input type="text"
									class="form-control" id="inputEmail1" required="required"
									aria-describedby="emailHelp" name="password">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>

	<%@include file="component/footer.jsp"%>
</body>
</html>