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
	
		<form action="/showSalary/{id}" method="POST">
			
			<div class="form-group">
				<label>Search Employee</label> <input type="search" name="search"
					class="form-control" placeholder="Search Employee By Id"
					required=""><br>
				<button type="submit" class="btn btn-success "> Search </button>
			</div>
		
		
		</form>
	
	<br>
	<div class="container-fluid" style="overflow-x:auto;" >
	<table class="table">
		<thead>
			<tr>
				<td>First Name</td>
				<td>Surname</td>
				<td>Email</td>
				<td>Contact Number</td>
				<td>Address</td>
				<td>Department</td>
				<td>Designation</td>
				<td>Status</td>
				<td>Date of Hired</td>
				<td>Basic Salary</td>
				<td>Houserent</td>
				<td>Netpay</td>
			
				
				<!-- <td>Username</td>
				<td>Password</td> -->
				
				<td>Action</td>
			</tr>
		</thead>
		<tbody>
		<%-- <c:forEach var="user" items="${userList}"> --%>
			<tr>
				<td>${userList.first_name}</td>
				<td>${userList.surname}</td>
				<td>${userList.email}</td>
				<td>${userList.contact_no}</td>
				<td>${userList.address}</td>
				<td>${userList.department}</td>
				<td>${userList.designation}</td>
				<td>${userList.status}</td>
				<td>${userList.doh}</td>
				<td>${userList.basic_salary}</td>
				<td>${allowanceList.houserent}</td>
				<td>${deductionList.netpay}</td>
				
				
				
				
				<td>
					<a class="btn btn-success" href="/user/edit/${user.id}"><i class="fa fa-edit"></i></a>
					<a class="btn btn-danger" href="/user/delete/${user.id}"><i class="fa fa-trash"></i></a>
				</td>
			</tr>
<%-- 		</c:forEach> --%>
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