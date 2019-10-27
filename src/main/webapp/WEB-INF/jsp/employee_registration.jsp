<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="header.jsp" />

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


<h2 class="main-title-w3layouts mb-2 text-center text-white"
	style="padding-top: 20px">Employee Register Form</h2>
<!--// main-heading -->
<div
	class="form-body-w3-agile  w-lg-50 w-sm-75 w-100 mx-auto mt-5 col-md-8"
	style="padding-left: 10px">
	<c:if test='${Boolean.parseBoolean(success)}'>
		<div class="alert alert-success">${message}</div>
	</c:if>
	<c:if test='${Boolean.parseBoolean(error)}'>
		<div class="alert alert-danger">${message}</div>
	</c:if>


	<form action="/userRegistration" method="post">

		<div class="form-group">
			<label>First Name</label> <input type="text" name="fName"
				class="form-control" placeholder="Write Employee First Name"
				required="">
		</div>
		<div class="form-group">
			<label>Surname</label> <input type="text" name="sName"
				class="form-control" placeholder="Write Employee Surname"
				required="">
		</div>

		<div class="form-group">


			<label>Date of Birth</label> <input type="date" class="form-control"
				name="dob">

		</div>

		<div class="form-group">

			<label>Gender</label>

		</div>

		<div class="form-check form-check-inline">

			<label class="radio-inline"> <input type="radio"
				name="gender" value="Male">Male
			</label> <label class="radio-inline"><input type="radio"
				name="gender" value="Female">Female</label>

		</div>

		<div class="form-group">
			<label>Email</label> <input type="email" name="email"
				class="form-control" placeholder="Write Employee Employee"
				required="">
		</div>


		<div class="form-group" >


			<label>Contact Number</label> <input
				type="text" class="form-control" 
				placeholder="Write Employee number" name="contact_number">
		</div>


		<div class="form-group" >

			<label >Address</label>
			<textarea rows="3" cols="6" class="form-control"
				 placeholder="Write Employee Address"
				name="address">
						</textarea>
		</div>


		<div class="form-group">


			<label >Department</label> <input
				type="text" class="form-control" name="department"
				placeholder="Write Employee Department" >
		</div>


		<div class="form-group">


			<label>Designation</label> <input
				type="text" class="form-control" name="designation"
				placeholder="Write Employee Designation"
				>
		</div>
		
		
		<div class="form-group">


	<label>Status</label> <input type="text"
		class="form-control" name="status"
		placeholder="Write Employee Status" >
</div>

<div class="form-group">


	<label >Date of Hired</label> <input
		type="date" class="form-control" name="doh"
		>

</div>

<div class="form-group">


	<label >Basic Salary</label> <input
		type="number" class="form-control" 
		placeholder="Write Employee Basic_Salary"
		name="basic_salary">
</div>


<div class="form-group">


	<label >Username</label> <input
		type="text" class="form-control" 
		placeholder="Write Employee Username" name="username">
</div>



<div class="form-group">


	<label>Password</label> <input type="text"
		class="form-control" name="password"
		placeholder="Write Employee Password">
</div>



	

		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Register</button>
	</form>

</div>




<jsp:include page="footer.jsp" />





























