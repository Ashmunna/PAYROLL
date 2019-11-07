<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp" />




<div class="card card-block d-flex" style="margin: 50px auto">
	
	
	<div class="card-body align-items-center d-flex justify-content-center"> <!--  -->

		<div class="container login-container row justify-content-center bg-dark" style="margin: 150px auto; width: 900px">
			<div class="row" style="margin-left:150px; padding: 30px">

				<div class="col-lg-12" >
					<p style="color:yellow"><strong>Finding Individual Employee Details Report by Employee Id</strong></p>
					<br>
				</div>


				<div class="col-lg-6 login-form-2" >

					<form name='f' action="/employeedetailsbyid" method='POST'>
						
						<div class="form-group" style="width: 300px; color:yellow" >
							<input type="number" name="id" class="form-control"
								placeholder="Write Your Employee Id" value="" />
						</div>
						

						<!-- <div class="form-group">
                            <label>Role</label> <select class="form-control"
                                name="role">
                                <option value="admin">admin</option>
                                <option value="user">user</option>
                            </select>
                        </div> -->
						<br>
						<div class="form-group">
							<input type="submit" class="btn btn-success" value="Done" />
						</div>
						
						
					</form>
				</div>
			</div>
		</div>
		
	</div>

</div>


<jsp:include page="footer.jsp" />