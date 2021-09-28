<%@ page import="com.Dao.BookDao"%>
<%@ page import="com.DB.DatabaseConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Entity.BookSource"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>[Admin] View Books</title>
<%@include file="component/css.jsp"%>
</head>
<body style="background-color: #7d5f5f">
<c:if test="${userObj.role ne 'admin'}">
	<c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center text-white">All Books</h3>
				<c:if test="${not empty msg}">
					<div class="alert alert-success" role="alert">${msg}</div>
					<c:remove var="msg"></c:remove>
				</c:if>

				<%
				BookDao bookDao = new BookDao(DatabaseConnect.getConnection());
				List<BookSource> list = bookDao.getAllBookSource();
				for (BookSource bookSource : list) {
				%>

				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">

							<h5>
								Title:
								<%=bookSource.getTitle()%></h5>
							<p>
								Author:
								<%=bookSource.getAuthor()%></p>
							<br>
							<div class="form-row text-center">
								<div class="form-group col-md-3 ">
									<input type="text" class="form-control form-control-sm"
										value="category:<%=bookSource.getCategory()%>" readonly>
									<input type="text" class="form-control form-control-sm"
										value="Link:<%=bookSource.getLink()%>" readonly>
								</div>
							</div>
							<div class="text-center">
								<a href="edit.jsp?id=<%=bookSource.getId()%>"
									class="btn btn-sm bg-success text-white">Edit</a>
                                <a href="delete?id=<%=bookSource.getId()%>"
									class="btn btn-sm bg-danger text-white">Delete</a>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>


</body>
</html>