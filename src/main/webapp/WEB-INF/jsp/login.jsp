<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

</head>






<div class="card card-block d-flex" style="margin: 50px auto">
	<div class="card-header text-center bg-info" style="color:yellow"><b>Jarvis Payroll Management System</b></div>
	
	<div class="card-body align-items-center d-flex justify-content-center"> <!--  -->

		<div class="container login-container row justify-content-center bg-dark" style="margin: 150px auto; width: 900px">
			<div class="row" style="margin-left:150px; padding: 30px">

				<div class="col-lg-12" style="color:yellow">
					<h3>Login Page</h3>
					<br>
				</div>


				<div class="col-lg-6 login-form-2" >

					<form name='f' action="/login" method='POST'>
						<div class="form-group" style="width: 300px; color:yellow" >
							<input type="text" name="username" class="form-control"
								placeholder="Your Username *" value="" />
						</div>
						<div class="form-group" style="width: 300px">
							<input type="password" name="password" class="form-control"
								placeholder="Your Password *" value="" />
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
							<input type="submit" class="btn btn-success" value="Login" />
						</div>
						<div class="form-group">

							<a href="#" class="ForgetPwd" value="Login" style="color:white">Forget Password?</a>
						</div>
						<div class="form-group" style="color:yellow">
							<p>
								New User? <a style="color:white" href="/register" value="Registration">
									Registration </a> Here
							</p>
							
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</div>
	
	
	<div class="card-footer text-center bg-info" style="color:yellow">
		<b>Develeoped By Md. Ashraful
		Islam
		</b>
	</div>
	
	
</div>


