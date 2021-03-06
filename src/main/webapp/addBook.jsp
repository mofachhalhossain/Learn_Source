<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>[Admin] Add Book</title>
<%@include file="component/css.jsp"%>
<style type="text/css">
#file-submit {
	margin-left: 8rem;
	margin-top: 2.3rem;
}

.submit-file {
	margin-top: 1.5rem;
	margin-left: -3.7rem;
}
</style>
</head>
<body style="background-color: #7d5f5f">
	<%@include file="component/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-primary">
						<c:if test="${not empty msg}">
							<div class="alert alert-success" role="alert">${msg}</div>
							<c:remove var="msg"></c:remove>
						</c:if>
						<h2>Add Books</h2>
					</div>
					<form action="addBook" method="post">
						<div class="form-group">
							<label>Title</label> <input type="text" name="title" required
								class="form-control">
						</div>
						<div class="form-group">
							<label>Author</label> <input type="text" name="author" required
								class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Category</label> <select name="category"
									id="inlineFormCustomSelectPref" class="custom-select">
									<option selected>Choose Option</option>
									<option value="For Beginners">For Beginners</option>
									<option value="Advanced">Advanced</option>
									<option value="Frameworks">Frameworks</option>
									<option value="DSA">DSA</option>
								</select>
							</div>
							<div class="form-group col-md-5" id="file-submit">
								<input type="text" name="link" required class="form-control">
								<div>
									<input type="submit" name="upload" class="submit-file" />
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>