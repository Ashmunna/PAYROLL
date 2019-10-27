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
	
	
	<div class="form-group">
			<label>Search Employee</label> <input type="search" name="search"
				class="form-control" placeholder="Search Employee By Id"
				required=""><br>
			<button type="submit" class="btn btn-success "> Search </button>
	</div>
	<br>
	<div class="container-fluid" style="overflow-x:auto;" >
	<table class="table">
		<thead>
			<tr>
				<td>First Name</td>
				<td>Surname</td>
				<td>Date of Birth</td>
				<td>Gender</td>
				<td>Email</td>
				<td>Contact Number</td>
				<td>Address</td>
				<td>Department</td>
				<td>Designation</td>
				<td>Status</td>
				<td>Date of Hired</td>
				<td>Basic Salary</td>
				<!-- <td>Username</td>
				<td>Password</td> -->
				
				<td>Action</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="user" items="${userList}">
			<tr>
				<td>${user.first_name}</td>
				<td>${user.surname}</td>
				<td>${user.dob}</td>
				<td>${user.gender}</td>
				<td>${user.email}</td>
				<td>${user.contact_no}</td>
				<td>${user.address}</td>
				<td>${user.department}</td>
				<td>${user.designation}</td>
				<td>${user.status}</td>
				<td>${user.doh}</td>
				<td>${user.basic_salary}</td>
				<!-- <td>${user.username}</td>
				<td>${user.password}</td> -->
				
				
				<td>
					<a class="btn btn-success" href="/user/edit/${user.id}"><i class="fa fa-edit"></i></a>
					<a class="btn btn-danger" href="/user/delete/${user.id}"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	

	</div>
	
	<div>
	
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Generate Slip</button>
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">PDF File</button>
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Save</button>
		
	</div>

</div>




<jsp:include page="footer.jsp" />