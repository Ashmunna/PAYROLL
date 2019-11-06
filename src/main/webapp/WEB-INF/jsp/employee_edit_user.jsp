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

	<div class="card-body align-items-center d-flex justify-content-center">
		<div class="container login-container row justify-content-center bg-dark" style="margin: 10px auto; width: 900px">
			<div class="text-center " style="padding: 20px">
					
				<h3 style="color: white">Please
					Registation Here</h3>
				<div>
					<p class="px-lg-5 sub-vj" style="color:white">Please read our terms and condition
						if you agree with us then you can register.</p>
				</div>
				
			</div>
			
			
					<form action="/userUpdate" method="post">
						<div class="row" >
					
							<div class="col-lg-6" style="width: 300px; color:yellow; padding:20px">
								
								<div class="form-group">
								<label>First Name</label> <input type="text" name="fName"
									class="form-control" placeholder="Write Employee First Name"
									required="" value="${userList.first_name}">
									<input type="hidden" name="id" class="form-control" placeholder="Write Employee First Name" required="" value="${userList.id}">
							</div>
							<div class="form-group">
								<label>Surname</label> <input type="text" name="sName"
									class="form-control" placeholder="Write Employee Surname"
									required="" value="${userList.surname}">
							</div>
					
							<div class="form-group">
					
					
								<label>Date of Birth</label> <input type="date" class="form-control"
									name="dob" value="${userList.dob}">
					
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
									required="" value="${userList.email}">
							</div>
					
					
							<div class="form-group" >
					
					
								<label>Contact Number</label> <input
									type="text" class="form-control" 
									placeholder="Write Employee number" name="contact_number" value="${userList.contact_no}">
							</div>
							
							<div>
							
							<button type="submit" class="btn btn-success  mt-sm-5  px-4">Update</button>
							</div>
							
						
							
							</div>
					
					
							
							
							
							<div class="col-lg-6" style="color:yellow; padding:20px">
							
								<div class="form-group" >
						
									<label >Address</label>
									<textarea rows="3" cols="5" class="form-control"
										 placeholder="Write Employee Address"
										name="address" >${userList.address}
												</textarea>
								</div>
							
								
					
					
								<div class="form-group">
						
						
									<label >Department</label> <input
										type="text" class="form-control" name="department"
										placeholder="Write Employee Department" value="${userList.department}" >
								</div>
					
					
								<div class="form-group">
						
						
									<label>Designation</label> <input
										type="text" class="form-control" name="designation"
										placeholder="Write Employee Designation" value="${userList.designation}"
										>
								</div>
							
							
								<div class="form-group">
						
						
									<label>Status</label> <input type="text" class="form-control" name="status"
										placeholder="Write Employee Status" value="${userList.status}">
								</div>
					
								<div class="form-group">
								
								
									<label >Date of Hired</label> <input
										type="date" class="form-control" name="doh" value="${userList.doh}"
										>
								
								</div>
					
								<div class="form-group">
								
								
									<label >Basic Salary</label> <input
										type="number" class="form-control" 
										placeholder="Write Employee Basic_Salary"
										name="basic_salary" value="${userList.basic_salary}">
								</div>
							
							
							</div>
					
					
						</div>
				
						
				</form>
			
			
			
			
		</div>
	</div>
</div>




<jsp:include page="footer.jsp" />






















