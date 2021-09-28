<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="component/css.jsp"%>
<style type="text/css">
.background-img {
	background: url("img/library.jpg");
	height: 83vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

#findBooks {
	margin-top: 9rem;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid background-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fas fa-book-open" id="findBooks"></i> Find your books
			</h1>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>
</body>
</html>