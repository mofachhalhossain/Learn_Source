<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
									<option value="Comic">Comic</option>
									<option value="Crime-Thriller">Crime-Thriller</option>
									<option value="Programming-Languages">Programming
										Languages</option>
									<option value="Science-Friction">Science-Friction</option>
								</select>
							</div>
							<div class="form-group col-md-5" id="file-submit">
								<form action="uploadFile" method="post"
									enctype="multipart/form-data">
									<input type="file" name="file" />
									<div>
										<input type="submit" name="upload" class="submit-file" />
									</div>
								</form>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>