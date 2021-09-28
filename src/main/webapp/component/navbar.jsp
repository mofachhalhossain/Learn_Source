<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand mr-4" href="index.jsp">Learn Source</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<c:if test="${userObj.role eq 'admin'}">
			<li class="nav-item"><a class="nav-link" href="addBook.jsp">Add Book</a></li>
			<li class="nav-item"><a class="nav-link" href="viewBook.jsp">View Book</a>
				</c:if>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<c:if test="${not empty userObj}">
				<a href="login.jsp" class="btn btn-light mr-2"><i
						class="fas fa-sign-in-alt"></i> Admin </a>
				<a href="signup.jsp"
				   class="btn btn-light"><i class="fas fa-user-plus"></i> Logout </a>
			</c:if>
			<c:if test="${empty userObj}">
				<a href="login.jsp" class="btn btn-light mr-2"><i
						class="fas fa-sign-in-alt"></i> Login </a>
				<a href="signup.jsp"
				   class="btn btn-light"><i class="fas fa-user-plus"></i> Signup </a>
			</c:if>
		</form>
	</div>
</nav>