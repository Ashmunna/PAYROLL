<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	
<jsp:include page="header_admin.jsp" />

<header>
	<style>
.dropdown:hover>.dropdown-menu {
	display: block;
}
.dropdown>.dropdown-toggle:active {
	/*Without this, clicking will make it sticky*/
	pointer-events: none;
}
</style>
</header>


<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>


<h1 class="main-title-w3layouts mb-2 text-center text-white"
	style="padding-top: 20px">Children Details</h1>
<!--// main-heading -->
<div
	class="form-body-w3-agile  w-lg-50 w-sm-75 w-100 mx-auto mt-5 col-md-8" style="padding-left: 10px">
	<c:if test='${Boolean.parseBoolean(success)}'>
		<div class="alert alert-success">${message}</div>
	</c:if>
	<c:if test='${Boolean.parseBoolean(error)}'>
		<div class="alert alert-danger">${message}</div>
	</c:if>
	<div class="container table-responsive-xl" style="overflow-x:auto;">
	<table class="table table-hover" style="width:900px">
		<thead class="thead-dark text-center">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Subject</th>
				<th>Message</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody class="text-center">
		<c:forEach var="contact" items="${contactList}">
			<tr>
				<td>${contact.name}</td>
				<td>${contact.email}</td>
				<td>${contact.subject}</td>
				<td>${contact.message}</td>
						
				
				<td>
					<a class="btn btn-success" href="/email/${contact.id}"><i class="fa fa-edit">Reply</i></a>
					
				</td>
				
				
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	</div>
	

</div>




<jsp:include page="footer.jsp" />