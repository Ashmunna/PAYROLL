<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />

</head>



<div class="card card-block d-flex" style="margin: 10px auto">
	<div class="card-header text-center bg-info" style="color: yellow">
		<b>Jarvis Payroll Management System</b>
	</div>

	<div class="card-body align-items-center d-flex justify-content-center">

		<!-- 		<div class="container login-container row justify-content-center bg-dark" style="margin: 150px auto; width: 900px">
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

						<div class="form-group">
                            <label>Role</label> <select class="form-control"
                                name="role">
                                <option value="admin">admin</option>
                                <option value="user">user</option>
                            </select>
                        </div>
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
		</div> -->


		
			<div class="container login-container row justify-content-center bg-dark" style="margin: 50px auto; width: 900px">
				<div class="text-center px-lg-5" style="padding: 20px">
					<h3 style="color: green;">${msg}</h3>
					<h3 class="title-w3ls mb-5" style="color: white">Please
						Registation Here</h3>
					<div class="title-desc text-center px-lg-5">
						<p class="px-lg-5 sub-vj" style="color:white">Please read our terms and condition
							if you agree with us then you can register.</p>
					</div>
				</div>
				<div class="contact-w3ls-form mt-5">
					<form action="/save" class="w3-pvt-contact-fm" method="post">
						<div class="row">
							<div class="col-lg-6">
								<div class="form-group" style="color:yellow">
									<label>First Name</label> <input class="form-control"
										type="text" name="fName" placeholder="Enter First Name"
										required="">
								</div>
								<div class="form-group" style="color:yellow">
									<label>Last Name</label> <input class="form-control"
										type="text" name="lName" placeholder="Enter last Name"
										required="">
								</div>
								<div class="form-group" style="color:yellow">
									<label>Email</label> <input class="form-control" type="email"
										name="email" placeholder="Enter Email" required="">
								</div>

								<div class="form-group" style="color:yellow">
									<label>Created Date</label> <input class="form-control"
										type="date" id="demo" name="createDate" />
								</div>
								<!-- <div class="form-group">
                            <label>Created Date</label> <output class="form-control"
                                type="date" id="demo" name="updateDate" />
                        </div> -->

							</div>
							<div class="col-lg-6">

								<div class="form-group" style="color:yellow">
									<label>Role</label> <select class="form-control" name="role">

										<option value="user">User</option>
										<option value="admin">Admin</option>

									</select>
								</div>

								<div class="form-group" style="color:yellow">
									<label>Username</label> <input class="form-control" type="text"
										name="username" placeholder="Enter Username" required="">
								</div>
								<div class="form-group" style="color:yellow">
									<label>Password</label> <input class="form-control" type="text"
										name="password" placeholder="Enter Password" required="">
								</div>
								<div class="form-group" style="color:yellow">
									<label>Enabled</label> <select class="form-control"
										name="enabled">
										<option value="True">True</option>
										<option value="False">False</option>
									</select>
								</div>
							</div>
							<div class="form-group mx-auto mt-6" style="padding: 20px">
							
								<button type="submit" class="btn submit btn-success">Submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
	
		<script>
			var d = new Date();
			document.getElementById("demo").innerHTML = d;
		</script>

	</div>


	<div class="card-footer text-center bg-info" style="color: yellow">
		<b>Develeoped By Md. Ashraful Islam </b>
	</div>


</div>






