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
	
	<div class="container" >
	
		<form action="/showSalary/{id}" method="POST">
			
			<div class="row">
				<div class="col-lg-12">
						<div class="form-group" style="width: 300px">
							<label><strong>Search Employee</strong></label> <input type="search" name="search"
								class="form-control text-center" placeholder="Search Employee By Id"
								required="true"><br>
							<button type="submit" class="btn btn-success "> Search </button>
						</div>
				</div>
			</div>
		
		</form>
		
	</div>

	
	<div class="container table-responsive-xl" style="overflow-x:auto;">
	<table class="table table-hover" style="width:1900px">
		<thead class="thead-dark text-center">
			<tr>
				<th>First Name</th>
				<th>Surname</th>
				<th>Email</th>
				<th>Contact Number</th>
				<th>Address</th>
				<th>Department</th>
				<th>Designation</th>
				<th>Status</th>
				<th>Date of Hired</th>
				<th>Basic Salary</th>
				<th>Overtime</th>
				<th>Houserent</th>
				<th>Medical Allowances</th>
				<th>Transport Allowances</th>
				<th>Other Allowances</th>
				<th>Gross Salary</th>
				<th>Life Insurance Deduction</th>
				<th>Advance Deduction</th>
				<th>Tax Deduction</th>
				<th>Contribution in P.F</th>
				<th>Other Deduction</th>
				<th>Netpay</th>
			
				
				<!-- <td>Username</td>
				<td>Password</td> 
				<td>Action</td>-->
			</tr>
		</thead>
		<tbody class="text-center">
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
				<td>${allowanceList.overtime_amount}</td>
				<td>${allowanceList.houserent}</td>
				<td>${allowanceList.ma}</td>
				<td>${allowanceList.tfa}</td>
				<td>${allowanceList.oa}</td>
				<td>${deductionList.gross_salary}</td>
				<td>${deductionList.lifeinsurance}</td>
				<td>${deductionList.advance}</td>
				<td>${deductionList.mealcharge}</td>
				<td>${deductionList.contribution_pf}</td>
				<td>${deductionList.other}</td>
				<td>${deductionList.netpay}</td>

				<%-- <td>
					<a class="btn btn-success" href="/user/edit/${user.id}"><i class="fa fa-edit"></i></a>
					<a class="btn btn-danger" href="/user/delete/${user.id}"><i class="fa fa-trash"></i></a>
				</td> --%>
			</tr>
<%-- 		</c:forEach> --%>
		</tbody>
	</table>
	
	</div>
	
<!-- 	<div>
	
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Generate Slip</button>
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">PDF File</button>
		<button type="submit" class="btn btn-success  mt-sm-5  px-4">Save</button>
		
	</div> -->

</div>




<jsp:include page="footer.jsp" />