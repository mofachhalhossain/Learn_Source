<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>[Admin]</title>
<%@include file="component/css.jsp"%>
<style type="text/css">
.background-img {
	background: url("img/admin.jpg");
	height: 83vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

#admin {
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	font-size: 5rem;
	margin-top: 8rem;
}
</style>
</head>
<body>
<c:if test="${userObj.role ne 'admin'}">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid background-img">
		<div class="text-center">
			<div class="text-white p-4">
				<h1 id="admin">Admin Panel</h1>
			</div>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>
</body>
</html>