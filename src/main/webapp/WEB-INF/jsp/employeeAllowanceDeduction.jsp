<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
	<br><br>
	
		<!-- Serach Button -->
	
	<div class="container" >
		
		<form action="/showUseradmin/deduction" method="post">
			<div class="row">
				<div class="col-lg-12">
				
					<div class="form-group" style="width: 300px">
						<label><strong>Search Employee</strong></label> <input type="search" name="search" 
							class="form-control text-center" placeholder="Search Employee By Id" required="">
							<br>
						<button type="submit" class="btn btn-success ">Search</button>
					</div>
				
				</div>
		
			
				
			</div>
		</form>
		
	</div>
	
	
	
	
	
	<!-- DEDUCTION INFO -->
	
	
	
	
	<div class="card-body align-items-center d-flex justify-content-center">

	<div class="container login-container row justify-content-center bg-dark" style="margin: 3px auto; width: 900px">
	
			<div class="text-center " style="padding: 20px">
					
				<h3 style="color: white">Calculate Employee Deduction Here</h3>
				<!-- <div>
					<p class="px-lg-5 sub-vj" style="color:white">Please read our terms and condition
						if you agree with us then you can register.</p>
				</div> -->
				
			</div>
			
			<form action="/caculatededuction" method="post">
			
				<div class="row">
				
					<div class="col-lg-6" style="width: 300px; color:yellow; padding:20px">

						<div class="form-group">
							<label>Employee Id</label> <input type="number" name="id"
								class="form-control" placeholder="" required=""
								value="${userList.emp_id}">
						</div>

						<div class="form-group">
							<label>First Name</label> <input type="text" name="fName"
								class="form-control" placeholder="Write Employee First Name"
								required="" value="${userList.first_name}">
						</div>
						
						<div class="form-group">
							<label>Surname</label> <input type="text" name="sName"
								class="form-control" placeholder="Write Employee Surname"
								required="" value="${userList.surname}">
						</div>


						<div class="form-group">
							<label>Email</label> <input type="email" name="email"
								class="form-control" placeholder="Write Employee Email"
								required="" value="${userList.email}">
						</div>


						<div class="form-group">

							<label>Address</label>
							<textarea rows="3" cols="6" class="form-control"
								placeholder="Write Employee Address" name="address">${userList.address}
						</textarea>
						</div>


						<div class="form-group">


							<label>Department</label> <input type="text"
								class="form-control" name="department"
								placeholder="Write Employee Department"
								value="${userList.department}">
						</div>


						<div class="form-group">


							<label>Designation</label> <input type="text"
								class="form-control" name="designation"
								placeholder="Write Employee Designation"
								value="${userList.designation}">
						</div>


					</div>
					
					<div class="col-lg-6" style="color:yellow; padding:20px">

						<div class="form-group">


							<label>Gross Salary</label> <input type="number"
								class="form-control" placeholder="Write Employee Basic_Salary"
								name="gross_salary" value="${userList.ts}">
						</div>

						<div class="form-group">


							<label>Life Insurance in Percentage</label> <input type="number"
								class="form-control" placeholder="Life Insurance in % "
								name="lifeinsurance">
						</div>

						<div class="form-group">


							<label>Advance Salary</label> <input type="number"
								class="form-control" placeholder="Write Advance Amount"
								name="advance">
						</div>

						<div class="form-group">


							<label>Tax in Percentage</label> <input type="number"
								class="form-control" placeholder="Write Tax in %"
								name="mealcharge">
						</div>

						<div class="form-group">


							<label>Contribution to P.F in Percentage</label> <input
								type="number" class="form-control"
								placeholder="Contribution to P.F in %"
								name="contribution_pf">
						</div>

						<div class="form-group">


							<label>Other Deduction</label> <input
								type="number" class="form-control"
								placeholder="Transport Allowance in %"
								name="other">
						</div>


						<button type="submit" class="btn btn-success  mt-sm-5  px-4">Calculate</button>



					</div>
				
				
				</div>

			
			</form>
			
	
	</div>


</div>
	
	
	
	
	
	<!-- DEDUCTION SAVEINFO -->
		
		
		<div class="card-body align-items-center d-flex justify-content-center">

	<div class="container login-container row justify-content-center bg-dark" style="margin: 3px auto; width: 900px">
	
			<div class="text-center " style="padding: 20px">
					
				<h3 style="color: white">Save Employee Deduction in Sheet</h3>
				<!-- <div>
					<p class="px-lg-5 sub-vj" style="color:white">Please read our terms and condition
						if you agree with us then you can register.</p>
				</div> -->
				
			</div>
			
			<form action="/savenetsalary" method="post">
			
				<div class="row">
				
					<div class="col-lg-6" style="width: 300px; color:yellow; padding:20px">
						
						
						<input type="text" name="emp_id" class="form-control"
							placeholder="Write Employee First Name" required=""
							value="${userList.emp_id}" hidden="true">

						<input type="text" name="fName" class="form-control"
							placeholder="Write Employee First Name" required=""
							value="${userList.first_name}" hidden="true">
							
						<input type="text"
							name="sName" class="form-control"
							placeholder="Write Employee Surname" required=""
							value="${userList.surname}" hidden="true"> 
							
						<input type="email"
							name="email" class="form-control"
							placeholder="Write Employee Email" required=""
							value="${userList.email}" hidden="true">

						<textarea rows="3" cols="6" class="form-control"
							placeholder="Write Employee Address" name="address" hidden="true">${userList.address} 
						</textarea>
						
						<input type="text" class="form-control" name="department"
							placeholder="Write Employee Department"
							value="${userList.department}" hidden="true"> 
							
						<input type="text"
							class="form-control" name="designation"
							placeholder="Write Employee Designation"
							value="${userList.designation}" hidden="true">
							
						<input
							type="text" class="form-control"
							placeholder="Write Employee Basic_Salary" name="gross_salary"
							value="${userList.ts}" hidden="true">
							

						<div class="form-group">

							<label>Total Life Insurance</label> <input type="number"
								class="form-control"
								placeholder="Write Employee Overtime Amount"
								name="lifeinsurance"  value="${tlifeinsurance}">
						</div>


						<div class="form-group">


							<label>Total Advance Salary</label> <input type="text"
								class="form-control" placeholder="Write Employee House Rent"
								name="advance" value="${advance}">
						</div>


						<div class="form-group">


							<label>Total Tax</label> <input type="text"
								class="form-control" placeholder="Write Employee House Rent"
								name="mealcharge" value="${tmealcharge}" >
						</div>


					</div>
					
					<div class="col-lg-6" style="color:yellow; padding:20px">


						<div class="form-group">


							<label>Total Contrbution to P.F</label> <input type="text"
								class="form-control" placeholder="Write Employee House Rent"
								name="contribution_pf" value="${tcontribution_pf}" >
						</div>


						<div class="form-group">


							<label>Total Other Deduction Amount</label> <input type="text"
								class="form-control"
								placeholder="Write Employee Other Allowances" name="other" value="${other}"
								>
						</div>

						<div class="form-group">


							<label>Total NET Payable Salary</label> <input type="text"
								class="form-control"
								placeholder="Write Employee Other Allowances" name="netpay" value="${netpay}"
								>
						</div>


						<button type="submit" class="btn btn-success  mt-sm-5  px-4">Save</button>

						<!-- <button type="c" class="btn btn-success  mt-sm-5  px-4">Clear</button> -->


					</div>
				
				
				</div>

			
			</form>
			
	
	</div>


</div>



<jsp:include page="footer.jsp" />