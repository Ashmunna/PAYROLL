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
	
	<div class="form-group">
			<label>Search Employee</label> <input type="search" name="search"
				class="form-control" placeholder="Search Employee By Id"
				required="">
	</div>


	<form action="/employeeAllowanceDeduction" method="post">
	
		<div class="form-group">
			<label>Employee Id</label> <input type="number" name="id"
				class="form-control" placeholder=""
				required="">
		</div>

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
			<label>Email</label> <input type="email" name="email"
				class="form-control" placeholder="Write Employee Email"
				required="">
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
		
		
			<label >Total Overtime Hour</label> <input
				type="number" class="form-control" 
				placeholder="Write Employee Overtime Hour"
				name="overtime_hour">
		</div>
		
		<div class="form-group">
		
		
			<label >Overtime Rate</label> <input
				type="number" class="form-control" 
				placeholder="Write Employee Overtime Rate"
				name="overtime_rate">
		</div>
		
		<div class="form-group">
		
		
			<label >Total Overtime Amount</label> <input
				type="number" class="form-control" 
				placeholder="Write Employee Overtime Amount"
				name="overtime_amount">
		</div>
		
		<div class="form-group">
		
		
			<label >House Rent</label> <input
				type="number" class="form-control" 
				placeholder="Write Employee House Rent"
				name="house_rent">
		</div>
		
		<div class="form-group">
		
		
			<label >Medical Allowance</label> <input
				type="number" class="form-control" 
				placeholder="Write Employee Medical Allowance"
				name="medical_allowance">
		</div>
		
		<div class="form-group">
		
		
			<label >Provident Fund Allowance</label> <input
				type="number" class="form-control" 
				placeholder="Write Employee Provident Fund Allowance"
				name="provident_fund_allowance">
		</div>
		
		
		<div class="form-group">
		
		
			<label >Other Allowances</label> <input
				type="number" class="form-control" 
				placeholder="Write Employee Other Allowances"
				name="other_allowances">
		</div>
		
		<div class="form-group">
		
		
			<label >Deduction Salary By Percentage</label> <input
				type="text" class="form-control" 
				placeholder="Write deduction of salary of amount"
				name="dspercentage">
		</div>
		
		<div class="form-group">
		
		
			<label >Deduction Salary By Amount</label> <input
				type="number" class="form-control" 
				placeholder="Write deduction of salary of amount"
				name="dsamount">
		</div>
		
		<div class="form-group">
		
		
			<label >Reason of Deduction</label> <input
				type="text" class="form-control" 
				placeholder="Write reason of deduction"
				name="rod">
		</div>
		
		<div class="form-group">
		
		
			<label >Total Deduction Salary after Deduction</label> <input
				type="number" class="form-control" 
				placeholder="Write deduction of salary of amount"
				name="total_deduction">
		</div>



		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Save</button>
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Calculate</button>
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Clear</button>
	</form>

</div>




<jsp:include page="footer.jsp" />