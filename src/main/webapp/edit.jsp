<%@ page import="com.Dao.BookDao"%>
<%@ page import="com.DB.DatabaseConnect"%>
<%@ page import="com.Entity.BookSource"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>[Admin] Edit</title>
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
<c:if test="${userObj.role ne 'admin'}">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="component/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-primary">
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDao dao = new BookDao(DatabaseConnect.getConnection());
						BookSource bookSource = dao.getBookSourceById(id);
						%>
						<h2>Edit</h2>
					</div>
					<form action="update" method="post">

						<input type="hidden" value="<%=bookSource.getId()%>" name="id">

						<div class="form-group">
							<label>Title</label> <input type="text" name="title" required
								class="form-control" value="<%=bookSource.getTitle()%>">
						</div>
						<div class="form-group">
							<label>Author</label> <input type="text" name="author" required
								class="form-control" value="<%=bookSource.getAuthor()%>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Category</label> <select name="category"
									id="inlineFormCustomSelectPref" class="custom-select">
									<option value="<%=bookSource.getCategory()%>"><%=bookSource.getCategory()%></option>
								</select>
							</div>
							<div class="form-group col-md-5" id="file-submit">
								<input type="text" name="link" required class="form-control"
									value="<%=bookSource.getLink()%>">
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